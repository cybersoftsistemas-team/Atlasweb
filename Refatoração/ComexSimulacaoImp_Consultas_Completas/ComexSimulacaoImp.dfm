object fComexSimulacaoImp: TfComexSimulacaoImp
  Left = 0
  Top = 0
  Width = 1000
  Height = 780
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  object RxLabel3: TUniLabel
    Left = 8
    Top = 3
    Width = 74
    Height = 21
    Hint = ''
    Caption = 'PROCESSO'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    TabOrder = 2
  end
  object RxLabel4: TUniLabel
    Left = 8
    Top = 22
    Width = 227
    Height = 18
    Hint = ''
    Caption = 'Simula'#231#227'o de c'#225'lculo de importa'#231#227'o.'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    TabOrder = 3
  end
  object PageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 749
    Hint = ''
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados da &Importa'#231#227'o'
      object Panel5: TUniPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 721
        Hint = ''
        Enabled = False
        Align = alClient
        TabOrder = 0
        Caption = ''
        object Label3: TUniLabel
          Left = 574
          Top = 335
          Width = 89
          Height = 13
          Hint = ''
          Caption = 'Aliquota_IRPJServ'
          TabOrder = 88
        end
        object StaticText44: TUniLabel
          Left = 4
          Top = 51
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Modalidade Importa'#231#227'o'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 0
        end
        object lData: TUniLabel
          Left = 200
          Top = 5
          Width = 33
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Data'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 42
        end
        object StaticText3: TUniLabel
          Left = 4
          Top = 143
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Fornecedor'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 43
        end
        object StaticText5: TUniLabel
          Left = 4
          Top = 166
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Pa'#237's Origem'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 44
        end
        object StaticText8: TUniLabel
          Left = 478
          Top = 281
          Width = 81
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Valor FOB (ME)'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 45
        end
        object cNumero: TUniDBEdit
          Left = 124
          Top = 5
          Width = 73
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Numero'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 1
          BorderStyle = ubsInset
        end
        object DBEdit5: TUniDBEdit
          Left = 124
          Top = 143
          Width = 385
          Height = 25
          Hint = ''
          DataField = 'Fornecedor'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 11
          BorderStyle = ubsInset
        end
        object DBEdit11: TUniDBEdit
          Left = 561
          Top = 281
          Width = 95
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'FOB'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 23
          BorderStyle = ubsInset
        end
        object DBEdit17: TUniDBEdit
          Left = 124
          Top = 212
          Width = 263
          Height = 25
          Hint = ''
          DataField = 'Porto_Destino'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 16
          BorderStyle = ubsInset
        end
        object StaticText11: TUniLabel
          Left = 4
          Top = 5
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'N'#250'mero'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 46
        end
        object StaticText14: TUniLabel
          Left = 4
          Top = 235
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Modalidade Frete'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 47
        end
        object StaticText15: TUniLabel
          Left = 4
          Top = 212
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Porto Destino'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 48
        end
        object DBEdit18: TUniDBEdit
          Left = 124
          Top = 258
          Width = 74
          Height = 25
          Hint = ''
          DataField = 'Qtde_Container'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 19
          BorderStyle = ubsInset
        end
        object DBEdit20: TUniDBEdit
          Left = 561
          Top = 304
          Width = 95
          Height = 25
          Hint = ''
          DataField = 'Frete_Internacional'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 27
          BorderStyle = ubsInset
        end
        object cTaxaMoeda: TUniDBEdit
          Left = 410
          Top = 281
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Taxa_FOB'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 22
          BorderStyle = ubsInset
        end
        object DBEdit24: TUniDBEdit
          Left = 685
          Top = 281
          Width = 94
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'FOB_Real'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 24
          Color = 16766421
          BorderStyle = ubsInset
        end
        object DBEdit25: TUniDBEdit
          Left = 685
          Top = 304
          Width = 94
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Frete_Real'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 28
          Color = 16766421
          BorderStyle = ubsInset
        end
        object StaticText16: TUniLabel
          Left = 4
          Top = 258
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Qtde.Containers'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 49
        end
        object StaticText18: TUniLabel
          Left = 478
          Top = 304
          Width = 81
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Frete (ME)'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 50
        end
        object StaticText21: TUniLabel
          Left = 374
          Top = 281
          Width = 34
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Taxa'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 51
        end
        object StaticText22: TUniLabel
          Left = 658
          Top = 281
          Width = 25
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'R$'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 52
        end
        object StaticText23: TUniLabel
          Left = 658
          Top = 304
          Width = 25
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'R$'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 53
        end
        object DBEdit32: TUniDBEdit
          Left = 349
          Top = 373
          Width = 97
          Height = 25
          Hint = ''
          DataField = 'Taxa_Adiministrativa'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 32
          BorderStyle = ubsInset
        end
        object StaticText29: TUniLabel
          Left = 229
          Top = 373
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Taxa Administrativa'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 54
        end
        object cDataRegistro_DI: TUniDBDateTimePicker
          Left = 235
          Top = 5
          Width = 152
          Height = 25
          Hint = ''
          DataField = 'Data'
          DateTime = 46308.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 2
          ParentFont = False
          Font.Color = clBlack
          Font.Style = [fsBold]
          BorderStyle = ubsInset
        end
        object StaticText31: TUniLabel
          Left = 390
          Top = 51
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Beneficio'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 55
        end
        object StaticText32: TUniLabel
          Left = 4
          Top = 281
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Moeda FOB'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 56
        end
        object RxDBLookupCombo1: TUniDBLookupComboBox
          Left = 124
          Top = 281
          Width = 247
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_FOB'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 21
          Color = clWindow
        end
        object RxDBLookupCombo2: TUniDBLookupComboBox
          Left = 510
          Top = 51
          Width = 268
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Beneficio'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 7
          Color = clWindow
        end
        object StaticText39: TUniLabel
          Left = 4
          Top = 396
          Width = 117
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'IRPJ'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 57
        end
        object DBEdit1: TUniDBEdit
          Left = 123
          Top = 396
          Width = 50
          Height = 25
          Hint = ''
          DataField = 'Aliquota_IRPJ'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 33
          BorderStyle = ubsInset
        end
        object StaticText40: TUniLabel
          Left = 264
          Top = 396
          Width = 42
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'CSLL'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 58
        end
        object DBEdit2: TUniDBEdit
          Left = 308
          Top = 396
          Width = 50
          Height = 25
          Hint = ''
          DataField = 'Aliquota_CSLL'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 35
          BorderStyle = ubsInset
        end
        object DBEdit4: TUniDBEdit
          Left = 175
          Top = 396
          Width = 86
          Height = 25
          Hint = ''
          DataField = 'Valor_IRPJ'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 34
          BorderStyle = ubsInset
        end
        object DBEdit8: TUniDBEdit
          Left = 360
          Top = 396
          Width = 86
          Height = 25
          Hint = ''
          DataField = 'Valor_CSLL'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 36
          BorderStyle = ubsInset
        end
        object DBEdit28: TUniDBEdit
          Left = 124
          Top = 350
          Width = 100
          Height = 25
          Hint = ''
          DataField = 'Peso_Liquido'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 29
          BorderStyle = ubsInset
        end
        object DBEdit29: TUniDBEdit
          Left = 349
          Top = 350
          Width = 97
          Height = 25
          Hint = ''
          DataField = 'Peso_Bruto'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 30
          BorderStyle = ubsInset
        end
        object StaticText43: TUniLabel
          Left = 4
          Top = 350
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Peso L'#237'quido'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 59
        end
        object StaticText45: TUniLabel
          Left = 229
          Top = 350
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Peso Bruto'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 60
        end
        object cVia: TUniDBComboBox
          Left = 124
          Top = 235
          Width = 264
          Height = 25
          Hint = ''
          DataField = 'Modalidade_Frete'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 18
          IconItems = <>
        end
        object RxDBLookupCombo3: TUniDBLookupComboBox
          Left = 124
          Top = 166
          Width = 263
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Pais_Origem'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 12
          Color = clWindow
        end
        object StaticText47: TUniLabel
          Left = 4
          Top = 189
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Pa'#237's Destino'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 61
        end
        object RxDBLookupCombo4: TUniDBLookupComboBox
          Left = 124
          Top = 189
          Width = 263
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Pais_Destino'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 14
          Color = clWindow
        end
        object StaticText48: TUniLabel
          Left = 390
          Top = 166
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Cidade Origem'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 62
        end
        object StaticText49: TUniLabel
          Left = 390
          Top = 189
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Cidade Destino'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 63
        end
        object DBEdit7: TUniDBEdit
          Left = 510
          Top = 166
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Cidade_Origem'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 13
          BorderStyle = ubsInset
        end
        object DBEdit16: TUniDBEdit
          Left = 510
          Top = 189
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Cidade_Destino'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 15
          BorderStyle = ubsInset
        end
        object StaticText50: TUniLabel
          Left = 390
          Top = 212
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Porto Origem'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 64
        end
        object DBEdit36: TUniDBEdit
          Left = 510
          Top = 212
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Porto_Origem'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 17
          BorderStyle = ubsInset
        end
        object StaticText51: TUniLabel
          Left = 4
          Top = 304
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Moeda Frete'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 65
        end
        object RxDBLookupCombo5: TUniDBLookupComboBox
          Left = 124
          Top = 304
          Width = 247
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_Frete'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 25
          Color = clWindow
        end
        object StaticText52: TUniLabel
          Left = 374
          Top = 304
          Width = 34
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Taxa'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 66
        end
        object DBEdit37: TUniDBEdit
          Left = 410
          Top = 304
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Taxa_Frete'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 26
          BorderStyle = ubsInset
        end
        object DBComboBox1: TUniDBComboBox
          Left = 280
          Top = 258
          Width = 197
          Height = 25
          Hint = ''
          DataField = 'Tipo_Container'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 20
          IconItems = <>
        end
        object StaticText10: TUniLabel
          Left = 199
          Top = 258
          Width = 79
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Tipo Container'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 67
        end
        object StaticText27: TUniLabel
          Left = 4
          Top = 97
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Tipo de Nota (Entrada)'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 68
        end
        object RxDBLookupCombo7: TUniDBLookupComboBox
          Left = 124
          Top = 97
          Width = 450
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Tipo_Nota'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 9
          Color = clWindow
        end
        object GroupBox1: TUniGroupBox
          Left = 4
          Top = 464
          Width = 774
          Height = 42
          Hint = ''
          Caption = 'Cliente Importador'
          TabOrder = 40
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
            Font.Color = clWhite
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            Color = 7293440
            TabOrder = 2
          end
          object StaticText28: TUniLabel
            Left = 502
            Top = 16
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
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clWindow
          end
        end
        object GroupBox2: TUniGroupBox
          Left = 4
          Top = 510
          Width = 774
          Height = 71
          Hint = ''
          Caption = 'Cliente Nota Fiscal'
          TabOrder = 41
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
            Font.Color = clWhite
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
            Font.Color = clWhite
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
            Caption = 'N'#227'o destacar impostos creditaveis'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            TabOrder = 9
            ParentColor = False
            Color = clBtnFace
          end
        end
        object StaticText36: TUniLabel
          Left = 4
          Top = 74
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'INCOTERM'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 69
        end
        object RxDBLookupCombo10: TUniDBLookupComboBox
          Left = 124
          Top = 74
          Width = 450
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'INCOTERM'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 8
          Color = clWindow
        end
        object StaticText37: TUniLabel
          Left = 390
          Top = 5
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'N'#186' do Processo'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 70
        end
        object DBEdit3: TUniDBEdit
          Left = 510
          Top = 5
          Width = 171
          Height = 25
          Hint = ''
          DataField = 'Processo'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 3
          BorderStyle = ubsInset
        end
        object StaticText38: TUniLabel
          Left = 4
          Top = 28
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Tipo de Produto'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 71
        end
        object DBEdit6: TUniDBEdit
          Left = 124
          Top = 28
          Width = 260
          Height = 25
          Hint = ''
          DataField = 'Tipo_Produto'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 4
          BorderStyle = ubsInset
        end
        object StaticText54: TUniLabel
          Left = 4
          Top = 373
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Fator'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 72
        end
        object DBEdit22: TUniDBEdit
          Left = 124
          Top = 373
          Width = 100
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Fator'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 31
          BorderStyle = ubsInset
        end
        object StaticText58: TUniLabel
          Left = 4
          Top = 120
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Tipo de Nota (Sa'#237'da)'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 73
        end
        object RxDBLookupCombo11: TUniDBLookupComboBox
          Left = 124
          Top = 120
          Width = 450
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Tipo_NotaSai'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 10
          Color = clWindow
        end
        object StaticText60: TUniLabel
          Left = 450
          Top = 396
          Width = 68
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMS Entrada'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 74
        end
        object DBEdit40: TUniDBEdit
          Left = 519
          Top = 396
          Width = 50
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSEntrada'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 37
          BorderStyle = ubsInset
        end
        object DBEdit41: TUniDBEdit
          Left = 631
          Top = 396
          Width = 58
          Height = 25
          Hint = ''
          DataField = 'Aliquota_ICMSSaida'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 38
          BorderStyle = ubsInset
        end
        object StaticText61: TUniLabel
          Left = 571
          Top = 396
          Width = 58
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'ICMSSa'#237'da'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 75
        end
        object RxDBLookupCombo12: TUniDBLookupComboBox
          Left = 124
          Top = 51
          Width = 262
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Modalidade'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 6
          Color = clWindow
        end
        object StaticText67: TUniLabel
          Left = 390
          Top = 28
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Produto Destinado a'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 76
        end
        object DBEdit47: TUniDBEdit
          Left = 510
          Top = 28
          Width = 268
          Height = 25
          Hint = ''
          DataField = 'Produto_Destinado'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 5
          BorderStyle = ubsInset
        end
        object GroupBox3: TUniGroupBox
          Left = 4
          Top = 419
          Width = 774
          Height = 41
          Hint = ''
          Caption = 'Servi'#231'os (Impostos e Taxas)'
          TabOrder = 39
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
            Font.Color = clWhite
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
            Font.Color = clWhite
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
            Font.Color = clWhite
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
            Font.Color = clWhite
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
            Font.Color = clWhite
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
            Font.Color = clWhite
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
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 0
            BorderStyle = ubsInset
          end
        end
        object StaticText124: TUniLabel
          Left = 478
          Top = 350
          Width = 81
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'AFRMM'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 77
        end
        object DBEdit54: TUniDBEdit
          Left = 561
          Top = 350
          Width = 95
          Height = 25
          Hint = ''
          DataField = 'Valor_AFRMM'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 78
          BorderStyle = ubsInset
        end
        object StaticText53: TUniLabel
          Left = 4
          Top = 327
          Width = 118
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Moeda Seguro'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 79
        end
        object RxDBLookupCombo6: TUniDBLookupComboBox
          Left = 124
          Top = 327
          Width = 247
          Height = 25
          Hint = ''
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Moeda_Seguro'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 80
          Color = clWindow
        end
        object StaticText19: TUniLabel
          Left = 374
          Top = 327
          Width = 34
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Taxa'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 81
        end
        object DBEdit21: TUniDBEdit
          Left = 410
          Top = 327
          Width = 66
          Height = 25
          Hint = ''
          DataField = 'Taxa_Seguro'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 82
          BorderStyle = ubsInset
        end
        object StaticText9: TUniLabel
          Left = 478
          Top = 327
          Width = 81
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Seguro (ME)'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 83
        end
        object cSeguro: TUniDBEdit
          Left = 561
          Top = 327
          Width = 95
          Height = 25
          Hint = ''
          DataField = 'Seguro_PremioValor'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 84
          BorderStyle = ubsInset
        end
        object StaticText24: TUniLabel
          Left = 658
          Top = 327
          Width = 25
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'R$'
          ParentFont = False
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 85
        end
        object DBEdit26: TUniDBEdit
          Left = 685
          Top = 327
          Width = 94
          Height = 25
          Hint = ''
          Enabled = False
          DataField = 'Seguro_Real'
          ParentFont = False
          Font.Style = [fsBold]
          TabOrder = 86
          Color = 16766421
          BorderStyle = ubsInset
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      Caption = '&Produtos'
      object Panel6: TUniPanel
        Left = 0
        Top = 0
        Width = 992
        Height = 260
        Hint = ''
        Enabled = False
        Align = alTop
        TabOrder = 0
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
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
          Font.Color = clWhite
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
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
          Font.Color = clWhite
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
          Font.Color = clWhite
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
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
          Font.Color = clWhite
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
        Top = 291
        Width = 992
        Height = 430
        Hint = ''
        LoadMask.Message = 'Loading data...'
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 1
      end
      object Panel4: TUniPanel
        Left = 0
        Top = 260
        Width = 992
        Height = 31
        Hint = ''
        Align = alTop
        TabOrder = 2
        Caption = ''
        object NavegaProdutos: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 334
          Height = 29
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
          Height = 29
          Hint = ''
          Caption = 'Duplicar &Item'
          Align = alLeft
          TabOrder = 1
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
        Font.Color = clWhite
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
      Caption = '&Despesas'
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
        Width = 992
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
        Font.Color = clWhite
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
        Width = 992
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
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          Color = 7293440
          TabOrder = 2
        end
        object StaticText33: TUniLabel
          Left = 5
          Top = 51
          Width = 46
          Height = 21
          Hint = ''
          AutoSize = False
          Caption = 'Despesa'
          ParentFont = False
          Font.Color = clWhite
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
          Font.Color = clWhite
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
          Font.Color = clWhite
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
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = 7293440
        TabOrder = 6
      end
    end
    object TabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 992
        Height = 721
        Hint = ''
        LoadMask.Message = 'Loading data...'
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Formulas dos C'#225'lculos'
      object Memo1: TUniMemo
        Left = 0
        Top = 0
        Width = 992
        Height = 721
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
  object Panel1: TUniPanel
    Left = 0
    Top = 749
    Width = 1000
    Height = 31
    Hint = ''
    Align = alBottom
    TabOrder = 1
    Caption = ''
    object bCalcular: TUniSpeedButton
      Left = 307
      Top = 1
      Width = 74
      Height = 29
      Hint = '  Recalcula todos os totais  '
      ShowHint = True
      ParentShowHint = False
      Caption = '&Calcular'
      Align = alLeft
      ParentColor = False
      TabOrder = 6
    end
    object bImprimir: TUniButton
      Left = 570
      Top = 1
      Width = 77
      Height = 29
      Hint = ''
      Caption = '&Imprimir Vert'
      Align = alLeft
      TabOrder = 0
    end
    object Navega: TUniDBNavigator
      Left = 1
      Top = 1
      Width = 306
      Height = 29
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
      Height = 29
      Hint = ''
      Caption = '&Gerar Excel'
      Align = alLeft
      TabOrder = 2
    end
    object bDuplicar: TUniButton
      Left = 381
      Top = 1
      Width = 114
      Height = 29
      Hint = ''
      Caption = '&Duplicar Simula'#231#227'o'
      Align = alLeft
      TabOrder = 3
    end
    object bImpHor: TUniButton
      Left = 647
      Top = 1
      Width = 81
      Height = 29
      Hint = ''
      Caption = '&Imprimir Horiz'
      Align = alLeft
      TabOrder = 4
    end
  end
  object tNumero: TFDQuery
    SQL.Strings = (
      'select max(Numero) as Numero from SimulaImportacao')
    Left = 426
    Top = 47
  end
  object tDespesa: TFDQuery
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      'where simulacao = 13'
      ''
      '')
    Left = 618
    Top = 63
  end
  object tRegistro: TFDQuery
    SQL.Strings = (
      
        'select isnull(max(Registro), 0)+1 as Registro from SimulaDespesa' +
        's')
    Left = 386
    Top = 7
  end
  object tSomaDespesas: TFDQuery
    SQL.Strings = (
      '')
    Left = 490
    Top = 7
  end
  object tItens: TFDQuery
    SQL.Strings = (
      'select max(Item) as Item from SimulaProdutos')
    Left = 570
    Top = 7
  end
  object tSomaProdutos: TFDQuery
    SQL.Strings = (
      '')
    Left = 530
    Top = 63
  end
  object tSomaImpostos: TFDQuery
    SQL.Strings = (
      '')
    Left = 530
    Top = 119
  end
  object tProdutos: TFDQuery
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
    Left = 306
    Top = 6
  end
  object tSimula: TFDQuery
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
    Left = 242
    Top = 9
  end
  object dstSimula: TDataSource
    DataSet = tSimula
    Left = 240
    Top = 56
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 304
    Top = 56
  end
  object dstDespesa: TDataSource
    DataSet = tDespesa
    Left = 616
    Top = 112
  end
  object tDespesaAdm: TFDQuery
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      'where Custo = 0'
      'and simulacao = 13'
      ''
      '')
    Left = 618
    Top = 167
  end
  object dstDespesaAdm: TDataSource
    DataSet = tDespesaAdm
    Left = 620
    Top = 215
  end
  object tDespesaSai: TFDQuery
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      ''
      '')
    Left = 538
    Top = 175
  end
  object dstDespesaSai: TDataSource
    DataSet = tDespesaSai
    Left = 536
    Top = 224
  end
  object ttmp: TFDQuery
    Left = 426
    Top = 102
  end
  object tDespesaMar: TFDQuery
    SQL.Strings = (
      'select * from SimulaDespesas where Simulacao = 13')
    Left = 289
    Top = 358
  end
  object dstDespesaMar: TDataSource
    DataSet = tDespesaMar
    Left = 289
    Top = 406
  end
  object SimulaImportacao: TFDQuery
    SQL.Strings = (
      'select * from SimulaImportacao ')
    Left = 40
    Top = 450
    object SimulaImportacaoNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'SimulaImportacao.Numero'
    end
    object SimulaImportacaoData: TDateTimeField
      FieldName = 'Data'
      Origin = 'SimulaImportacao.Data'
    end
    object SimulaImportacaoModalidade: TStringField
      FieldName = 'Modalidade'
      Origin = 'SimulaImportacao.Modalidade'
      Size = 30
    end
    object SimulaImportacaoPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'SimulaImportacao.Peso_Bruto'
      DisplayFormat = ',##0.000'
    end
    object SimulaImportacaoFOB: TCurrencyField
      FieldName = 'FOB'
      Origin = 'SimulaImportacao.FOB'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_II: TFloatField
      FieldName = 'Valor_II'
      Origin = 'SimulaImportacao.Valor_II'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_IPI: TFloatField
      FieldName = 'Valor_IPI'
      Origin = 'SimulaImportacao.Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoModalidade_Frete: TStringField
      FieldName = 'Modalidade_Frete'
      Origin = 'SimulaImportacao.Modalidade_Frete'
    end
    object SimulaImportacaoFrete_Internacional: TCurrencyField
      FieldName = 'Frete_Internacional'
      Origin = 'SimulaImportacao.Frete_Internacional'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoSeguro_PremioPercentual: TFloatField
      FieldName = 'Seguro_PremioPercentual'
      Origin = 'SimulaImportacao.Seguro_PremioPercentual'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoSeguro_PremioValor: TCurrencyField
      FieldName = 'Seguro_PremioValor'
      Origin = 'SimulaImportacao.Seguro_PremioValor'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoFOB_Real: TCurrencyField
      FieldName = 'FOB_Real'
      Origin = 'SimulaImportacao.FOB_Real'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoFrete_Real: TCurrencyField
      FieldName = 'Frete_Real'
      Origin = 'SimulaImportacao.Frete_Real'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoSeguro_Real: TCurrencyField
      FieldName = 'Seguro_Real'
      Origin = 'SimulaImportacao.Seguro_Real'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'SimulaImportacao.Aliquota_ICMSEntrada'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoAliquota_ICMSSaida: TFloatField
      FieldName = 'Aliquota_ICMSSaida'
      Origin = 'SimulaImportacao.Aliquota_ICMSSaida'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoTaxa_Adiministrativa: TFloatField
      FieldName = 'Taxa_Adiministrativa'
      Origin = 'SimulaImportacao.Taxa_Adiministrativa'
      DisplayFormat = '##0.0000%'
    end
    object SimulaImportacaoBeneficio: TStringField
      FieldName = 'Beneficio'
      Origin = 'SimulaImportacao.Beneficio'
      Size = 15
    end
    object SimulaImportacaoValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'SimulaImportacao.Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'SimulaImportacao.Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_ICMSEntrada: TCurrencyField
      FieldName = 'Valor_ICMSEntrada'
      Origin = 'SimulaImportacao.Valor_ICMSEntrada'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_ICMSSaida: TCurrencyField
      FieldName = 'Valor_ICMSSaida'
      Origin = 'SimulaImportacao.Valor_ICMSSaida'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoBCICMS_Entrada: TCurrencyField
      FieldName = 'BCICMS_Entrada'
      Origin = 'SimulaImportacao.BCICMS_Entrada'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoBCICMS_Saida: TCurrencyField
      FieldName = 'BCICMS_Saida'
      Origin = 'SimulaImportacao.BCICMS_Saida'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'SimulaImportacao.Aliquota_IRPJ'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'SimulaImportacao.Valor_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'SimulaImportacao.Aliquota_CSLL'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'SimulaImportacao.Valor_CSLL'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'SimulaImportacao.Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object SimulaImportacaoPorto_Origem: TStringField
      FieldName = 'Porto_Origem'
      Origin = 'SimulaImportacao.Porto_Origem'
      Size = 30
    end
    object SimulaImportacaoPorto_Destino: TStringField
      FieldName = 'Porto_Destino'
      Origin = 'SimulaImportacao.Porto_Destino'
      Size = 30
    end
    object SimulaImportacaoCidade_Origem: TStringField
      FieldName = 'Cidade_Origem'
      Origin = 'SimulaImportacao.Cidade_Origem'
      Size = 30
    end
    object SimulaImportacaoCidade_Destino: TStringField
      FieldName = 'Cidade_Destino'
      Origin = 'SimulaImportacao.Cidade_Destino'
      Size = 30
    end
    object SimulaImportacaoTipo_Container: TStringField
      FieldName = 'Tipo_Container'
      Origin = 'SimulaImportacao.Tipo_Container'
    end
    object SimulaImportacaoMoeda_Frete: TStringField
      FieldName = 'Moeda_Frete'
      Origin = 'SimulaImportacao.Moeda_Frete'
      Size = 30
    end
    object SimulaImportacaoTaxa_Frete: TFloatField
      FieldName = 'Taxa_Frete'
      Origin = 'SimulaImportacao.Taxa_Frete'
      DisplayFormat = ',##0.0000'
    end
    object SimulaImportacaoMoeda_Seguro: TStringField
      FieldName = 'Moeda_Seguro'
      Origin = 'SimulaImportacao.Moeda_Seguro'
      Size = 30
    end
    object SimulaImportacaoTaxa_Seguro: TFloatField
      FieldName = 'Taxa_Seguro'
      Origin = 'SimulaImportacao.Taxa_Seguro'
      DisplayFormat = ',##0.0000'
    end
    object SimulaImportacaoTaxa_FOB: TFloatField
      FieldName = 'Taxa_FOB'
      Origin = 'SimulaImportacao.Taxa_FOB'
      DisplayFormat = ',##0.0000'
    end
    object SimulaImportacaoMoeda_FOB: TStringField
      FieldName = 'Moeda_FOB'
      Origin = 'SimulaImportacao.Moeda_FOB'
      Size = 30
    end
    object SimulaImportacaoTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'SimulaImportacao.Tipo_Nota'
    end
    object SimulaImportacaoCliente_ImpNome: TStringField
      FieldName = 'Cliente_ImpNome'
      Origin = 'SimulaImportacao.Cliente_ImpNome'
      Size = 50
    end
    object SimulaImportacaoCliente_ImpEstado: TStringField
      FieldName = 'Cliente_ImpEstado'
      Origin = 'SimulaImportacao.Cliente_ImpEstado'
      Size = 2
    end
    object SimulaImportacaoCliente_NotaNome: TStringField
      FieldName = 'Cliente_NotaNome'
      Origin = 'SimulaImportacao.Cliente_NotaNome'
      Size = 50
    end
    object SimulaImportacaoCliente_NotaEstado: TStringField
      FieldName = 'Cliente_NotaEstado'
      Origin = 'SimulaImportacao.Cliente_NotaEstado'
      Size = 2
    end
    object SimulaImportacaoCliente_NotaContrib: TBooleanField
      FieldName = 'Cliente_NotaContrib'
      Origin = 'SimulaImportacao.Cliente_NotaContrib'
    end
    object SimulaImportacaoCliente_NotaSimples: TBooleanField
      FieldName = 'Cliente_NotaSimples'
      Origin = 'SimulaImportacao.Cliente_NotaSimples'
    end
    object SimulaImportacaoCliente_NotaJuridica: TBooleanField
      FieldName = 'Cliente_NotaJuridica'
      Origin = 'SimulaImportacao.Cliente_NotaJuridica'
    end
    object SimulaImportacaoCliente_NotaZonaFranca: TBooleanField
      FieldName = 'Cliente_NotaZonaFranca'
      Origin = 'SimulaImportacao.Cliente_NotaZonaFranca'
    end
    object SimulaImportacaoCliente_NotaConsumidorFinal: TBooleanField
      FieldName = 'Cliente_NotaConsumidorFinal'
      Origin = 'SimulaImportacao.Cliente_NotaConsumidorFinal'
    end
    object SimulaImportacaoINCOTERM: TStringField
      FieldName = 'INCOTERM'
      Origin = 'SimulaImportacao.INCOTERM'
      Size = 3
    end
    object SimulaImportacaoProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'SimulaImportacao.Processo'
      Size = 15
    end
    object SimulaImportacaoDI: TStringField
      FieldName = 'DI'
      Origin = 'SimulaImportacao.DI'
      Size = 15
    end
    object SimulaImportacaoQtde_Container: TIntegerField
      FieldName = 'Qtde_Container'
      Origin = 'SimulaImportacao.Qtde_Container'
    end
    object SimulaImportacaoFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'SimulaImportacao.Fornecedor'
      Size = 50
    end
    object SimulaImportacaoTipo_Produto: TStringField
      FieldName = 'Tipo_Produto'
      Origin = 'SimulaImportacao.Tipo_Produto'
      Size = 60
    end
    object SimulaImportacaoFator: TFloatField
      FieldName = 'Fator'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoPais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Size = 4
    end
    object SimulaImportacaoPais_Destino: TStringField
      FieldName = 'Pais_Destino'
      Size = 4
    end
    object SimulaImportacaoTipo_NotaSai: TSmallintField
      FieldName = 'Tipo_NotaSai'
    end
    object SimulaImportacaoValor_IPISai: TCurrencyField
      FieldName = 'Valor_IPISai'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_PISSai: TCurrencyField
      FieldName = 'Valor_PISSai'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_COFINSSai: TCurrencyField
      FieldName = 'Valor_COFINSSai'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoTotal_NFSaida: TCurrencyField
      FieldName = 'Total_NFSaida'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoTotal_Produtos: TCurrencyField
      FieldName = 'Total_Produtos'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_Despesas: TCurrencyField
      FieldName = 'Valor_Despesas'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoBCIPI_Entrada: TCurrencyField
      FieldName = 'BCIPI_Entrada'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoBCIPI_Saida: TCurrencyField
      FieldName = 'BCIPI_Saida'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoBCII_Entrada: TCurrencyField
      FieldName = 'BCII_Entrada'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoBCICMSST: TCurrencyField
      FieldName = 'BCICMSST'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object SimulaImportacaoTotal_NFEntrada: TCurrencyField
      FieldName = 'Total_NFEntrada'
      DisplayFormat = '.##0.00'
    end
    object SimulaImportacaoValor_DespesasSai: TCurrencyField
      FieldName = 'Valor_DespesasSai'
    end
    object SimulaImportacaoProduto_Destinado: TStringField
      FieldName = 'Produto_Destinado'
      Size = 50
    end
    object SimulaImportacaoTaxa_Servico: TFloatField
      FieldName = 'Taxa_Servico'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoAliquota_PISServ: TFloatField
      FieldName = 'Aliquota_PISServ'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoAliquota_COFINSServ: TFloatField
      FieldName = 'Aliquota_COFINSServ'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoAliquota_IRPJServ: TFloatField
      FieldName = 'Aliquota_IRPJServ'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoAliquota_CSLLServ: TFloatField
      FieldName = 'Aliquota_CSLLServ'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoAliquota_ISSServ: TFloatField
      FieldName = 'Aliquota_ISSServ'
      DisplayFormat = '##0.00'
    end
    object SimulaImportacaoDestacar_ImpCred: TBooleanField
      FieldName = 'Destacar_ImpCred'
    end
    object SimulaImportacaoValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      DisplayFormat = ',##0.00'
    end
  end
  object dsSimulaImportacao: TDataSource
    DataSet = SimulaImportacao
    Left = 96
    Top = 450
  end
  object SimulaProdutos: TFDQuery
    SQL.Strings = (
      'select * from SimulaProdutos')
    Left = 40
    Top = 450
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
    Left = 96
    Top = 450
  end
  object SimulaDespesas: TFDQuery
    SQL.Strings = (
      'select * from SimulaDespesas')
    Left = 40
    Top = 450
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
    Left = 96
    Top = 450
  end
  object TiposProcesso: TFDQuery
    SQL.Strings = (
      'select * from TiposProcesso')
    Left = 40
    Top = 450
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
    Left = 96
    Top = 450
  end
  object Empresas: TFDQuery
    SQL.Strings = (
      'select * from Empresas where Codigo = :pCodigo')
    Left = 728
    Top = 480
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 728
    Top = 500
  end
  object ClassificacaoFinanceira: TFDQuery
    SQL.Strings = (
      
        'select * from ClassificacaoFinanceira where (Desativada <> 1) or' +
        'der by Descricao')
    Left = 776
    Top = 480
  end
  object dsClassificacaoFinanceira: TDataSource
    DataSet = ClassificacaoFinanceira
    Left = 776
    Top = 500
  end
  object Moedas: TFDQuery
    SQL.Strings = (
      'select * from Moedas order by Nome')
    Left = 824
    Top = 480
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 824
    Top = 500
  end
  object TipoNota: TFDQuery
    SQL.Strings = (
      'select * from TipoNota order by Descricao')
    Left = 680
    Top = 520
  end
  object dsTipoNota: TDataSource
    DataSet = TipoNota
    Left = 680
    Top = 540
  end
  object IncentivosFiscais: TFDQuery
    SQL.Strings = (
      'select * from IncentivosFiscais order by Nome')
    Left = 728
    Top = 520
  end
  object dsIncentivosFiscais: TDataSource
    DataSet = IncentivosFiscais
    Left = 728
    Top = 540
  end
  object Paises: TFDQuery
    SQL.Strings = (
      'select * from Paises order by Nome')
    Left = 776
    Top = 520
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 776
    Top = 540
  end
  object Estados: TFDQuery
    SQL.Strings = (
      'select * from Estados order by Codigo')
    Left = 824
    Top = 520
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 824
    Top = 540
  end
  object Incoterms: TFDQuery
    SQL.Strings = (
      'select * from INCOTERMS order by Codigo')
    Left = 680
    Top = 560
  end
  object dsIncoterms: TDataSource
    DataSet = Incoterms
    Left = 680
    Top = 580
  end
  object Campos: TFDQuery
    Left = 728
    Top = 560
  end
  object dsCampos: TDataSource
    DataSet = Campos
    Left = 728
    Top = 580
  end
  object Configuracao: TFDQuery
    SQL.Strings = (
      'select * from Configuracao')
    Left = 776
    Top = 560
  end
  object dsConfiguracao: TDataSource
    DataSet = Configuracao
    Left = 776
    Top = 580
  end
end
