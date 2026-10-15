object fComexSimulacaoImp: TfComexSimulacaoImp
  Left = 0
  Top = 0
  Width = 1000
  Height = 780
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  object RxLabel3: TUniLabel
    Left = 8
    Top = 3
    Width = 76
    Height = 21
    Caption = 'PROCESSO'
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object RxLabel4: TUniLabel
    Left = 8
    Top = 22
    Width = 229
    Height = 18
    Caption = 'Simula'#231#227'o de c'#225'lculo de importa'#231#227'o.'
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object PageControl1: TUniPageControl
    Left = 3
    Top = 49
    Width = 801
    Height = 629
    Align = alClient
    TabOrder = 0
    object TabSheet1: TUniTabSheet
      Caption = 'Dados da &Importa'#231#227'o'
      object Panel5: TUniPanel
        Left = 3
        Top = 3
        Width = 787
        Height = 588
        Align = alClient
        Enabled = False
        TabOrder = 0
        object Label3: TUniLabel
          Left = 574
          Top = 335
          Width = 89
          Height = 13
          Caption = 'Aliquota_IRPJServ'
        end
        object StaticText44: TUniLabel
          Left = 4
          Top = 51
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Modalidade Importa'#231#227'o'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object lData: TUniLabel
          Left = 200
          Top = 5
          Width = 33
          Height = 21
          AutoSize = False
          Caption = 'Data'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 42
        end
        object StaticText3: TUniLabel
          Left = 4
          Top = 143
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Fornecedor'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 43
        end
        object StaticText5: TUniLabel
          Left = 4
          Top = 166
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Pa'#237's Origem'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 44
        end
        object StaticText8: TUniLabel
          Left = 478
          Top = 281
          Width = 81
          Height = 21
          AutoSize = False
          Caption = 'Valor FOB (ME)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 45
        end
        object cNumero: TUniDBEdit
          OnChange = cNumeroChange
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 5
          Width = 73
          Height = 25
          DataField = 'Numero'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit5: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 143
          Width = 385
          Height = 25
          DataField = 'Fornecedor'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit11: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 561
          Top = 281
          Width = 95
          Height = 25
          DataField = 'FOB'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object DBEdit17: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 212
          Width = 263
          Height = 25
          DataField = 'Porto_Destino'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object StaticText11: TUniLabel
          Left = 4
          Top = 5
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'N'#250'mero'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 46
        end
        object StaticText14: TUniLabel
          Left = 4
          Top = 235
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Modalidade Frete'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 47
        end
        object StaticText15: TUniLabel
          Left = 4
          Top = 212
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Porto Destino'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 48
        end
        object DBEdit18: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 258
          Width = 74
          Height = 25
          DataField = 'Qtde_Container'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit20: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 561
          Top = 304
          Width = 95
          Height = 25
          DataField = 'Frete_Internacional'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
        end
        object cTaxaMoeda: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 410
          Top = 281
          Width = 66
          Height = 25
          DataField = 'Taxa_FOB'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object DBEdit24: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 685
          Top = 281
          Width = 94
          Height = 25
          Color = 16766421
          DataField = 'FOB_Real'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object DBEdit25: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 685
          Top = 304
          Width = 94
          Height = 25
          Color = 16766421
          DataField = 'Frete_Real'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object StaticText16: TUniLabel
          Left = 4
          Top = 258
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Qtde.Containers'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 49
        end
        object StaticText18: TUniLabel
          Left = 478
          Top = 304
          Width = 81
          Height = 21
          AutoSize = False
          Caption = 'Frete (ME)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 50
        end
        object StaticText21: TUniLabel
          Left = 374
          Top = 281
          Width = 34
          Height = 21
          AutoSize = False
          Caption = 'Taxa'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 51
        end
        object StaticText22: TUniLabel
          Left = 658
          Top = 281
          Width = 25
          Height = 21
          AutoSize = False
          Caption = 'R$'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 52
        end
        object StaticText23: TUniLabel
          Left = 658
          Top = 304
          Width = 25
          Height = 21
          AutoSize = False
          Caption = 'R$'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 53
        end
        object DBEdit32: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 349
          Top = 373
          Width = 97
          Height = 25
          DataField = 'Taxa_Adiministrativa'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
        end
        object StaticText29: TUniLabel
          Left = 229
          Top = 373
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Taxa Administrativa'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 54
        end
        object cDataRegistro_DI: TUniDBDateTimePicker
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 235
          Top = 5
          Width = 152
          Height = 25
          DataField = 'Data'
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText31: TUniLabel
          Left = 390
          Top = 51
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Beneficio'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 55
        end
        object StaticText32: TUniLabel
          Left = 4
          Top = 281
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Moeda FOB'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 56
        end
        object RxDBLookupCombo1: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 281
          Width = 247
          Height = 25
          DataField = 'Moeda_FOB'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        end
        object RxDBLookupCombo2: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 510
          Top = 51
          Width = 268
          Height = 25
          DataField = 'Beneficio'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText39: TUniLabel
          Left = 4
          Top = 396
          Width = 117
          Height = 21
          AutoSize = False
          Caption = 'IRPJ'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 57
        end
        object DBEdit1: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 123
          Top = 396
          Width = 50
          Height = 25
          DataField = 'Aliquota_IRPJ'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
        end
        object StaticText40: TUniLabel
          Left = 264
          Top = 396
          Width = 42
          Height = 21
          AutoSize = False
          Caption = 'CSLL'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 58
        end
        object DBEdit2: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 308
          Top = 396
          Width = 50
          Height = 25
          DataField = 'Aliquota_CSLL'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        end
        object DBEdit4: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 175
          Top = 396
          Width = 86
          Height = 25
          DataField = 'Valor_IRPJ'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        end
        object DBEdit8: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 360
          Top = 396
          Width = 86
          Height = 25
          DataField = 'Valor_CSLL'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit28: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 350
          Width = 100
          Height = 25
          DataField = 'Peso_Liquido'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit29: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 349
          Top = 350
          Width = 97
          Height = 25
          DataField = 'Peso_Bruto'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object StaticText43: TUniLabel
          Left = 4
          Top = 350
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Peso L'#237'quido'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 59
        end
        object StaticText45: TUniLabel
          Left = 229
          Top = 350
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Peso Bruto'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 60
        end
        object cVia: TUniDBComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 235
          Width = 264
          Height = 25
          DataField = 'Modalidade_Frete'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object RxDBLookupCombo3: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 166
          Width = 263
          Height = 25
          DataField = 'Pais_Origem'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText47: TUniLabel
          Left = 4
          Top = 189
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Pa'#237's Destino'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 61
        end
        object RxDBLookupCombo4: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 189
          Width = 263
          Height = 25
          DataField = 'Pais_Destino'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object StaticText48: TUniLabel
          Left = 390
          Top = 166
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Cidade Origem'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 62
        end
        object StaticText49: TUniLabel
          Left = 390
          Top = 189
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Cidade Destino'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 63
        end
        object DBEdit7: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 510
          Top = 166
          Width = 268
          Height = 25
          DataField = 'Cidade_Origem'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit16: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 510
          Top = 189
          Width = 268
          Height = 25
          DataField = 'Cidade_Destino'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object StaticText50: TUniLabel
          Left = 390
          Top = 212
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Porto Origem'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 64
        end
        object DBEdit36: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 510
          Top = 212
          Width = 268
          Height = 25
          DataField = 'Porto_Origem'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object StaticText51: TUniLabel
          Left = 4
          Top = 304
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Moeda Frete'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 65
        end
        object RxDBLookupCombo5: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 304
          Width = 247
          Height = 25
          DataField = 'Moeda_Frete'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object StaticText52: TUniLabel
          Left = 374
          Top = 304
          Width = 34
          Height = 21
          AutoSize = False
          Caption = 'Taxa'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 66
        end
        object DBEdit37: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 410
          Top = 304
          Width = 66
          Height = 25
          DataField = 'Taxa_Frete'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        end
        object DBComboBox1: TUniDBComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 280
          Top = 258
          Width = 197
          Height = 25
          DataField = 'Tipo_Container'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object StaticText10: TUniLabel
          Left = 199
          Top = 258
          Width = 79
          Height = 21
          AutoSize = False
          Caption = 'Tipo Container'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 67
        end
        object StaticText27: TUniLabel
          Left = 4
          Top = 97
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Tipo de Nota (Entrada)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 68
        end
        object RxDBLookupCombo7: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 97
          Width = 450
          Height = 25
          DataField = 'Tipo_Nota'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object GroupBox1: TUniGroupBox
          Left = 4
          Top = 464
          Width = 774
          Height = 42
          Caption = 'Cliente Importador'
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 40
          object cNomeClienteImp: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 61
            Top = 16
            Width = 438
            Height = 25
            DataField = 'Cliente_ImpNome'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object StaticText1: TUniLabel
            Left = 6
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            Caption = 'Nome'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
          end
          object StaticText28: TUniLabel
            Left = 502
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            Caption = 'Estado'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object RxDBLookupCombo8: TUniDBLookupComboBox
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 557
            Top = 16
            Width = 205
            Height = 25
            DataField = 'Cliente_ImpEstado'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox2: TUniGroupBox
          Left = 4
          Top = 510
          Width = 774
          Height = 71
          Caption = 'Cliente Nota Fiscal'
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 41
          object StaticText34: TUniLabel
            Left = 6
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            Caption = 'Nome'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object StaticText35: TUniLabel
            Left = 502
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            Caption = 'Estado'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit19: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 61
            Top = 16
            Width = 438
            Height = 25
            DataField = 'Cliente_NotaNome'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBCheckBox1: TUniDBCheckBox
            Left = 11
            Top = 45
            Width = 77
            Height = 17
            Caption = 'Contribuinte'
            DataField = 'Cliente_NotaContrib'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBCheckBox2: TUniDBCheckBox
            Left = 228
            Top = 45
            Width = 102
            Height = 17
            Caption = 'Simples Nacional'
            DataField = 'Cliente_NotaSimples'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBCheckBox3: TUniDBCheckBox
            Left = 107
            Top = 45
            Width = 95
            Height = 17
            Caption = 'Pessoa Juridica'
            DataField = 'Cliente_NotaJuridica'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object RxDBLookupCombo9: TUniDBLookupComboBox
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 557
            Top = 16
            Width = 205
            Height = 25
            DataField = 'Cliente_NotaEstado'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBCheckBox4: TUniDBCheckBox
            Left = 355
            Top = 45
            Width = 83
            Height = 17
            Caption = 'Zona Franca'
            DataField = 'Cliente_NotaZonaFranca'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBCheckBox5: TUniDBCheckBox
            Left = 459
            Top = 45
            Width = 102
            Height = 17
            Caption = 'Consumidor Final'
            DataField = 'Cliente_NotaConsumidorFinal'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBCheckBox6: TUniDBCheckBox
            Left = 581
            Top = 45
            Width = 184
            Height = 17
            Caption = 'N'#227'o destacar impostos creditaveis'
            DataField = 'Destacar_ImpCred'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
        end
        object StaticText36: TUniLabel
          Left = 4
          Top = 74
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'INCOTERM'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 69
        end
        object RxDBLookupCombo10: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 74
          Width = 450
          Height = 25
          DataField = 'INCOTERM'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText37: TUniLabel
          Left = 390
          Top = 5
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'N'#186' do Processo'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 70
        end
        object DBEdit3: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 510
          Top = 5
          Width = 171
          Height = 25
          DataField = 'Processo'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText38: TUniLabel
          Left = 4
          Top = 28
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Tipo de Produto'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 71
        end
        object DBEdit6: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 28
          Width = 260
          Height = 25
          DataField = 'Tipo_Produto'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText54: TUniLabel
          Left = 4
          Top = 373
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Fator'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 72
        end
        object DBEdit22: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 373
          Width = 100
          Height = 25
          DataField = 'Fator'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
        end
        object StaticText58: TUniLabel
          Left = 4
          Top = 120
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Tipo de Nota (Sa'#237'da)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 73
        end
        object RxDBLookupCombo11: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 120
          Width = 450
          Height = 25
          DataField = 'Tipo_NotaSai'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText60: TUniLabel
          Left = 450
          Top = 396
          Width = 68
          Height = 21
          AutoSize = False
          Caption = 'ICMS Entrada'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 74
        end
        object DBEdit40: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 519
          Top = 396
          Width = 50
          Height = 25
          DataField = 'Aliquota_ICMSEntrada'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object DBEdit41: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 631
          Top = 396
          Width = 58
          Height = 25
          DataField = 'Aliquota_ICMSSaida'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 38
        end
        object StaticText61: TUniLabel
          Left = 571
          Top = 396
          Width = 58
          Height = 21
          AutoSize = False
          Caption = 'ICMSSa'#237'da'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 75
        end
        object RxDBLookupCombo12: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 51
          Width = 262
          Height = 25
          DataField = 'Modalidade'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText67: TUniLabel
          Left = 390
          Top = 28
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Produto Destinado a'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 76
        end
        object DBEdit47: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 510
          Top = 28
          Width = 268
          Height = 25
          DataField = 'Produto_Destinado'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object GroupBox3: TUniGroupBox
          Left = 4
          Top = 419
          Width = 774
          Height = 41
          Caption = 'Servi'#231'os (Impostos e Taxas)'
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
          object StaticText69: TUniLabel
            Left = 159
            Top = 15
            Width = 30
            Height = 21
            AutoSize = False
            Caption = 'PIS'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit49: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 191
            Top = 15
            Width = 44
            Height = 25
            DataField = 'Aliquota_PISServ'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object StaticText70: TUniLabel
            Left = 446
            Top = 15
            Width = 42
            Height = 21
            AutoSize = False
            Caption = 'CSLL'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit50: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 490
            Top = 15
            Width = 50
            Height = 25
            DataField = 'Aliquota_CSLLServ'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit51: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 294
            Top = 15
            Width = 50
            Height = 25
            DataField = 'Aliquota_COFINSServ'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object StaticText71: TUniLabel
            Left = 244
            Top = 15
            Width = 48
            Height = 21
            AutoSize = False
            Caption = 'COFINS'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 8
          end
          object StaticText72: TUniLabel
            Left = 348
            Top = 15
            Width = 42
            Height = 21
            AutoSize = False
            Caption = 'IRPJ'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit52: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 392
            Top = 15
            Width = 50
            Height = 25
            DataField = 'Aliquota_IRPJServ'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object StaticText73: TUniLabel
            Left = 545
            Top = 15
            Width = 42
            Height = 21
            AutoSize = False
            Caption = 'ISS'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit53: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 589
            Top = 15
            Width = 50
            Height = 25
            DataField = 'Aliquota_ISSServ'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object StaticText68: TUniLabel
            Left = 6
            Top = 15
            Width = 67
            Height = 21
            AutoSize = False
            Caption = 'Taxa Servi'#231'o'
            Color = 7293440
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit48: TUniDBEdit
            FieldLabelAlign = laLeft
            BorderStyle = ubsInset
            Left = 75
            Top = 15
            Width = 80
            Height = 25
            DataField = 'Taxa_Servico'
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object StaticText124: TUniLabel
          Left = 478
          Top = 350
          Width = 81
          Height = 21
          AutoSize = False
          Caption = 'AFRMM'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 77
        end
        object DBEdit54: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 561
          Top = 350
          Width = 95
          Height = 25
          DataField = 'Valor_AFRMM'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 78
        end
        object StaticText53: TUniLabel
          Left = 4
          Top = 327
          Width = 118
          Height = 21
          AutoSize = False
          Caption = 'Moeda Seguro'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 79
        end
        object RxDBLookupCombo6: TUniDBLookupComboBox
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 124
          Top = 327
          Width = 247
          Height = 25
          DataField = 'Moeda_Seguro'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 80
        end
        object StaticText19: TUniLabel
          Left = 374
          Top = 327
          Width = 34
          Height = 21
          AutoSize = False
          Caption = 'Taxa'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 81
        end
        object DBEdit21: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 410
          Top = 327
          Width = 66
          Height = 25
          DataField = 'Taxa_Seguro'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 82
        end
        object StaticText9: TUniLabel
          Left = 478
          Top = 327
          Width = 81
          Height = 21
          AutoSize = False
          Caption = 'Seguro (ME)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 83
        end
        object cSeguro: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 561
          Top = 327
          Width = 95
          Height = 25
          DataField = 'Seguro_PremioValor'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 84
        end
        object StaticText24: TUniLabel
          Left = 658
          Top = 327
          Width = 25
          Height = 21
          AutoSize = False
          Caption = 'R$'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 85
        end
        object DBEdit26: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 685
          Top = 327
          Width = 94
          Height = 25
          Color = 16766421
          DataField = 'Seguro_Real'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 86
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Caption = '&Produtos'
      object Panel6: TUniPanel
        Left = 3
        Top = 3
        Width = 787
        Height = 260
        Align = alTop
        Enabled = False
        TabOrder = 0
        object StaticText2: TUniLabel
          Left = 5
          Top = 5
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'Produto'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object cProduto: TUniDBEdit
          OnChange = cProdutoChange
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 5
          Width = 669
          Height = 25
          DataField = 'Produto'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText4: TUniLabel
          Left = 5
          Top = 28
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'NCM'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 17
        end
        object cNCM: TUniDBEdit
          OnExit = cNCMExit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 28
          Width = 106
          Height = 25
          Color = 16438246
          DataField = 'NCM'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText7: TUniLabel
          Left = 5
          Top = 51
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'Peso L'#237'quido'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object DBEdit10: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 51
          Width = 106
          Height = 25
          DataField = 'Peso_Liquido'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText17: TUniLabel
          Left = 5
          Top = 97
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'Valor Unit'#225'rio (ME)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object cUnitario: TUniDBEdit
          OnExit = cUnitarioExit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 97
          Width = 106
          Height = 25
          DataField = 'Valor_UnitarioME'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText6: TUniLabel
          Left = 5
          Top = 74
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'Quantidade'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object DBEdit9: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 74
          Width = 106
          Height = 25
          DataField = 'Quantidade'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText12: TUniLabel
          Left = 5
          Top = 120
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'II'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object cAliquotaII: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 120
          Width = 66
          Height = 25
          DataField = 'Aliquota_II'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText13: TUniLabel
          Left = 5
          Top = 143
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'IPI'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object cAliquotaIPI: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 143
          Width = 66
          Height = 25
          DataField = 'Aliquota_IpI'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText25: TUniLabel
          Left = 5
          Top = 166
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'PIS (Entrada)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
        end
        object cAliquotaPIS: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 166
          Width = 66
          Height = 25
          DataField = 'Aliquota_PIS'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText26: TUniLabel
          Left = 5
          Top = 189
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'COFINS (Entrada)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 24
        end
        object cAliquotaCOFINS: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 189
          Width = 66
          Height = 25
          DataField = 'Aliquota_COFINS'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object cPesoBruto: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 371
          Top = 51
          Width = 121
          Height = 25
          DataField = 'Peso_Bruto'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText41: TUniLabel
          Left = 280
          Top = 51
          Width = 89
          Height = 21
          AutoSize = False
          Caption = 'Peso Bruto'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
        end
        object DBEdit13: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 171
          Top = 120
          Width = 106
          Height = 25
          DataField = 'Valor_II'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit14: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 171
          Top = 143
          Width = 106
          Height = 25
          DataField = 'Valor_IPI'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit15: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 171
          Top = 166
          Width = 106
          Height = 25
          DataField = 'Valor_PIS'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit23: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 171
          Top = 189
          Width = 106
          Height = 25
          DataField = 'Valor_COFINS'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object cUnitarioReal: TUniNumberEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 371
          Top = 97
          Width = 121
          Height = 25
          TabStop = False
          AutoSize = False
          DisplayFormat = ',##0.000000'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText42: TUniLabel
          Left = 280
          Top = 97
          Width = 89
          Height = 21
          AutoSize = False
          Caption = 'Valor Unit'#225'rio (R$)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 26
        end
        object StaticText46: TUniLabel
          Left = 5
          Top = 212
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'ICMS (Entrada)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 27
        end
        object DBEdit35: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 171
          Top = 212
          Width = 106
          Height = 25
          DataField = 'Valor_ICMSEntrada'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit33: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 212
          Width = 66
          Height = 25
          DataField = 'Aliquota_ICMSEntrada'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object StaticText55: TUniLabel
          Left = 280
          Top = 166
          Width = 89
          Height = 21
          AutoSize = False
          Caption = 'PIS (Sa'#237'da)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit12: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 371
          Top = 166
          Width = 66
          Height = 25
          DataField = 'Aliquota_PISSai'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object StaticText56: TUniLabel
          Left = 280
          Top = 189
          Width = 89
          Height = 21
          AutoSize = False
          Caption = 'COFINS (Sa'#237'da)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 31
        end
        object DBEdit27: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 371
          Top = 189
          Width = 66
          Height = 25
          DataField = 'Aliquota_COFINSSai'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
        end
        object DBEdit30: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 439
          Top = 166
          Width = 102
          Height = 25
          DataField = 'Valor_PISSai'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
          Visible = False
        end
        object DBEdit31: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 439
          Top = 189
          Width = 102
          Height = 25
          DataField = 'Valor_COFINSSai'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
          Visible = False
        end
        object StaticText57: TUniLabel
          Left = 280
          Top = 212
          Width = 89
          Height = 21
          AutoSize = False
          Caption = 'ICMS (Sa'#237'da)'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 35
        end
        object DBEdit34: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 439
          Top = 212
          Width = 102
          Height = 25
          DataField = 'Valor_ICMSSaida'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit38: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 371
          Top = 212
          Width = 66
          Height = 25
          DataField = 'Aliquota_ICMS'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object StaticText63: TUniLabel
          Left = 5
          Top = 235
          Width = 96
          Height = 21
          AutoSize = False
          Caption = 'ICMS ST'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 38
        end
        object DBEdit43: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 171
          Top = 235
          Width = 106
          Height = 25
          DataField = 'Valor_ICMSST'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
        end
        object DBEdit44: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 103
          Top = 235
          Width = 66
          Height = 25
          DataField = 'Aliquota_ICMSST'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 40
        end
        object StaticText64: TUniLabel
          Left = 280
          Top = 235
          Width = 89
          Height = 21
          AutoSize = False
          Caption = 'MVA'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 41
        end
        object DBEdit45: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 371
          Top = 235
          Width = 66
          Height = 25
          DataField = 'Aliquota_MVA'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 42
        end
        object cTotalII: TUniNumberEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 280
          Top = 120
          Width = 96
          Height = 25
          DisplayFormat = ',0.00;'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 43
        end
        object cTotalIPI: TUniNumberEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 280
          Top = 143
          Width = 96
          Height = 25
          DisplayFormat = ',0.00;'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 44
        end
        object DBEdit46: TUniDBEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 713
          Top = 212
          Width = 58
          Height = 25
          DataField = 'Aliquota_ICMSRed2'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 45
        end
      end
      object GradeProd: TUniDBGrid
        Left = 3
        Top = 306
        Width = 787
        Height = 285
        Align = alClient
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel4: TUniPanel
        Left = 3
        Top = 269
        Width = 787
        Height = 31
        Align = alTop
        TabOrder = 2
        object NavegaProdutos: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 334
          Height = 29
          Align = alLeft
          ShowHint = True
          TabOrder = 0
        end
        object bDuplicarItem: TUniButton
          OnClick = bDuplicarItemClick
          Left = 335
          Top = 1
          Width = 88
          Height = 29
          Align = alLeft
          Caption = 'Duplicar &Item'
          TabOrder = 1
        end
      end
      object StaticText62: TUniLabel
        Left = 547
        Top = 214
        Width = 99
        Height = 21
        AutoSize = False
        Caption = 'ICMS (Redu'#231#227'o 1/2)'
        Color = 7293440
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit42: TUniDBEdit
        FieldLabelAlign = laLeft
        BorderStyle = ubsInset
        Left = 648
        Top = 214
        Width = 66
        Height = 25
        DataField = 'Aliquota_ICMSRed'
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet3: TUniTabSheet
      Caption = '&Despesas'
      object gDespesas: TUniDBGrid
        Left = 2
        Top = 132
        Width = 781
        Height = 425
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Panel3: TUniPanel
        Left = 3
        Top = 96
        Width = 787
        Height = 30
        Align = alTop
        TabOrder = 1
        object bRemoveTudo: TUniButton
          OnClick = bRemoveTudoClick
          Left = 271
          Top = 1
          Width = 88
          Height = 28
          Align = alLeft
          Caption = 'Remover &Tudo'
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object bBuscar: TUniButton
          OnClick = bBuscarClick
          Left = 359
          Top = 1
          Width = 144
          Height = 28
          Align = alLeft
          Caption = '&Buscar Processo Existente'
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object bMarinha: TUniButton
          OnClick = bMarinhaClick
          Left = 503
          Top = 1
          Width = 104
          Height = 28
          Align = alLeft
          Caption = '&Marinha Mercante'
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object NavegaDesp: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 270
          Height = 28
          Align = alLeft
          ShowHint = True
          TabOrder = 3
        end
        object bPISCOFINS: TUniButton
          OnClick = bPISCOFINSClick
          Left = 607
          Top = 1
          Width = 130
          Height = 28
          Align = alLeft
          Caption = '&Diferen'#231'a PIS/COFINS'
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object StaticText30: TUniLabel
        Left = 147
        Top = 563
        Width = 147
        Height = 21
        AutoSize = False
        Caption = 'Total das Despesas  (Entrada)'
        Color = 7293440
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object cTotalDespesasSai: TUniNumberEdit
        FieldLabelAlign = laLeft
        BorderStyle = ubsInset
        Left = 547
        Top = 563
        Width = 110
        Height = 25
        AutoSize = False
        Color = 16764262
        DisplayFormat = ',0.00;-,0.00'
        Enabled = False
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cTotalDespesas: TUniNumberEdit
        FieldLabelAlign = laLeft
        BorderStyle = ubsInset
        Left = 295
        Top = 563
        Width = 99
        Height = 25
        AutoSize = False
        Color = 16764262
        DisplayFormat = ',0.00;-,0.00'
        Enabled = False
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel2: TUniPanel
        Left = 3
        Top = 3
        Width = 787
        Height = 87
        Align = alTop
        Enabled = False
        TabOrder = 5
        object bPesq: TUniSpeedButton
          OnClick = bPesqClick
          Left = 403
          Top = 50
          Width = 23
          Height = 23
        end
        object StaticText20: TUniLabel
          Left = 652
          Top = 51
          Width = 21
          Height = 21
          AutoSize = False
          Caption = 'R$'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object StaticText33: TUniLabel
          Left = 5
          Top = 51
          Width = 46
          Height = 21
          AutoSize = False
          Caption = 'Despesa'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object cDespNac: TUniNumberEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 675
          Top = 51
          Width = 101
          Height = 25
          AutoSize = False
          DisplayFormat = ',##0.00'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText59: TUniLabel
          Left = 530
          Top = 51
          Width = 23
          Height = 21
          AutoSize = False
          Caption = 'ME'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
        end
        object cValorME: TUniNumberEdit
          OnChange = cValorMEChange
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 555
          Top = 51
          Width = 94
          Height = 25
          AutoSize = False
          DisplayFormat = ',##0.00'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText65: TUniLabel
          Left = 430
          Top = 51
          Width = 29
          Height = 21
          AutoSize = False
          Caption = 'Taxa'
          Color = 7293440
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
        end
        object cTaxa: TUniNumberEdit
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 461
          Top = 51
          Width = 65
          Height = 25
          AutoSize = False
          DisplayFormat = '##0.0000'
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit39: TUniDBEdit
          OnChange = DBEdit39Change
          FieldLabelAlign = laLeft
          BorderStyle = ubsInset
          Left = 689
          Top = 5
          Width = 84
          Height = 25
          DataField = 'Registro'
          Enabled = False
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          Visible = False
        end
      end
      object StaticText66: TUniLabel
        Left = 399
        Top = 563
        Width = 147
        Height = 21
        AutoSize = False
        Caption = 'Total das Despesas  (Sa'#237'da)'
        Color = 7293440
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
    end
    object TabSheet5: TUniTabSheet
      Caption = 'Lista'
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 793
        Height = 594
        Align = alClient
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet4: TUniTabSheet
      Caption = 'Formulas dos C'#225'lculos'
      object Memo1: TUniMemo
        Left = 0
        Top = 0
        Width = 793
        Height = 594
        Align = alClient
        Color = 12320767
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TUniPanel
    Left = 0
    Top = 684
    Width = 807
    Height = 31
    Align = alBottom
    TabOrder = 1
    object bCalcular: TUniSpeedButton
      OnClick = bCalcularClick
      Left = 307
      Top = 1
      Width = 74
      Height = 29
      Hint = '  Recalcula todos os totais  '
      Align = alLeft
      Caption = '&Calcular'
      ShowHint = True
    end
    object bSair: TUniButton
      OnClick = bSairClick
      Left = 735
      Top = 1
      Width = 71
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ShowHint = True
      TabOrder = 0
    end
    object bImprimir: TUniButton
      Left = 570
      Top = 1
      Width = 77
      Height = 29
      Align = alLeft
      Caption = '&Imprimir Vert'
      TabOrder = 1
    end
    object Navega: TUniDBNavigator
      Left = 1
      Top = 1
      Width = 306
      Height = 29
      Align = alLeft
      ShowHint = True
      TabOrder = 2
    end
    object bExcel: TUniButton
      OnClick = bExcelClick
      Left = 495
      Top = 1
      Width = 75
      Height = 29
      Align = alLeft
      Caption = '&Gerar Excel'
      TabOrder = 3
    end
    object bDuplicar: TUniButton
      OnClick = bDuplicarClick
      Left = 381
      Top = 1
      Width = 114
      Height = 29
      Align = alLeft
      Caption = '&Duplicar Simula'#231#227'o'
      TabOrder = 4
    end
    object bImpHor: TUniButton
      Left = 647
      Top = 1
      Width = 81
      Height = 29
      Align = alLeft
      Caption = '&Imprimir Horiz'
      TabOrder = 5
    end
  end
  object tNumero: TFDQuery
    Left = 426
    Top = 47
    SQL.Strings = (
      'select max(Numero) as Numero from SimulaImportacao')

  end
  object tDespesa: TFDQuery
    Left = 618
    Top = 63
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      'where simulacao = 13'
      ''
      '')

  end
  object tRegistro: TFDQuery
    Left = 386
    Top = 7
    SQL.Strings = (
      
        'select isnull(max(Registro), 0)+1 as Registro from SimulaDespesa' +
        's')

  end
  object tSomaDespesas: TFDQuery
    Left = 490
    Top = 7
    SQL.Strings = (
      '')

  end
  object tItens: TFDQuery
    Left = 570
    Top = 7
    SQL.Strings = (
      'select max(Item) as Item from SimulaProdutos')

  end
  object tSomaProdutos: TFDQuery
    Left = 530
    Top = 63
    SQL.Strings = (
      '')

  end
  object tSomaImpostos: TFDQuery
    Left = 530
    Top = 119
    SQL.Strings = (
      '')

  end
  object tProdutos: TFDQuery
    Left = 306
    Top = 6
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

  end
  object tSimula: TFDQuery
    Left = 242
    Top = 9
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
    Left = 618
    Top = 167
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      'where Custo = 0'
      'and simulacao = 13'
      ''
      '')

  end
  object dstDespesaAdm: TDataSource
    DataSet = tDespesaAdm
    Left = 620
    Top = 215
  end
  object tDespesaSai: TFDQuery
    Left = 538
    Top = 175
    SQL.Strings = (
      'select *'
      '      ,Valor_ME = Valor'
      'from SimulaDespesas'
      ''
      '')

  end
  object dstDespesaSai: TDataSource
    DataSet = tDespesaSai
    Left = 536
    Top = 224
  end
  object ttmp: TFDQuery
    Left = 424
    Top = 100
  end
  object tDespesaMar: TFDQuery
    Left = 289
    Top = 358
    SQL.Strings = (
      'select * from SimulaDespesas where Simulacao = 13')

  end
  object dstDespesaMar: TDataSource
    DataSet = tDespesaMar
    Left = 289
    Top = 406
  end

  object SimulaImportacao: TFDQuery
    Left = 40
    Top = 450
    SQL.Strings = (
      'select * from SimulaImportacao ')
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
    Left = 40
    Top = 450
    SQL.Strings = (
      'select * from SimulaProdutos')
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
    Left = 40
    Top = 450
    SQL.Strings = (
      'select * from SimulaDespesas')
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
    Left = 40
    Top = 450
    SQL.Strings = (
      'select * from TiposProcesso')
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
    Left = 728
    Top = 480
    SQL.Strings = (
      'select * from Empresas where Codigo = :pCodigo'
    )
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 728
    Top = 500
  end

  object ClassificacaoFinanceira: TFDQuery
    Left = 776
    Top = 480
    SQL.Strings = (
      'select * from ClassificacaoFinanceira where (Desativada <> 1) order by Descricao'
    )
  end
  object dsClassificacaoFinanceira: TDataSource
    DataSet = ClassificacaoFinanceira
    Left = 776
    Top = 500
  end

  object Moedas: TFDQuery
    Left = 824
    Top = 480
    SQL.Strings = (
      'select * from Moedas order by Nome'
    )
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 824
    Top = 500
  end

  object TipoNota: TFDQuery
    Left = 680
    Top = 520
    SQL.Strings = (
      'select * from TipoNota order by Descricao'
    )
  end
  object dsTipoNota: TDataSource
    DataSet = TipoNota
    Left = 680
    Top = 540
  end

  object IncentivosFiscais: TFDQuery
    Left = 728
    Top = 520
    SQL.Strings = (
      'select * from IncentivosFiscais order by Nome'
    )
  end
  object dsIncentivosFiscais: TDataSource
    DataSet = IncentivosFiscais
    Left = 728
    Top = 540
  end

  object Paises: TFDQuery
    Left = 776
    Top = 520
    SQL.Strings = (
      'select * from Paises order by Nome'
    )
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 776
    Top = 540
  end

  object Estados: TFDQuery
    Left = 824
    Top = 520
    SQL.Strings = (
      'select * from Estados order by Codigo'
    )
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 824
    Top = 540
  end

  object Incoterms: TFDQuery
    Left = 680
    Top = 560
    SQL.Strings = (
      'select * from INCOTERMS order by Codigo'
    )
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
    Left = 776
    Top = 560
    SQL.Strings = (
      'select * from Configuracao'
    )
  end
  object dsConfiguracao: TDataSource
    DataSet = Configuracao
    Left = 776
    Top = 580
  end

end
