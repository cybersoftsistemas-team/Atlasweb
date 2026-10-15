object Processo_SimulacaoCalculo: TProcesso_SimulacaoCalculo
  Left = 455
  Top = 208
  BorderStyle = bsDialog
  Caption = '-'
  ClientHeight = 715
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 801
    Height = 675
    Margins.Bottom = 6
    ActivePage = TabSheet4
    Align = alClient
    HotTrack = True
    MultiLine = True
    TabHeight = 25
    TabOrder = 0
    TabWidth = 120
    object TabSheet1: TTabSheet
      Caption = 'Dados da &Importa'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 594
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 787
        Height = 634
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        ExplicitHeight = 588
        object Label3: TLabel
          Left = 574
          Top = 335
          Width = 89
          Height = 13
          Caption = 'Aliquota_IRPJServ'
        end
        object StaticText44: TStaticText
          Left = 4
          Top = 51
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade Importa'#231#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object lData: TStaticText
          Left = 200
          Top = 5
          Width = 33
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 42
          Transparent = False
          StyleElements = []
        end
        object StaticText3: TStaticText
          Left = 4
          Top = 143
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fornecedor'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 43
          Transparent = False
          StyleElements = []
        end
        object StaticText5: TStaticText
          Left = 4
          Top = 166
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pa'#237's Origem'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object StaticText8: TStaticText
          Left = 478
          Top = 281
          Width = 81
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor FOB (ME)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object cNumero: TDBEdit
          Left = 124
          Top = 5
          Width = 73
          Height = 21
          DataField = 'Numero'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = cNumeroChange
        end
        object DBEdit5: TDBEdit
          Left = 124
          Top = 143
          Width = 385
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit11: TDBEdit
          Left = 561
          Top = 281
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FOB'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object DBEdit17: TDBEdit
          Left = 124
          Top = 212
          Width = 263
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Porto_Destino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object StaticText11: TStaticText
          Left = 4
          Top = 5
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#250'mero'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 46
          Transparent = False
          StyleElements = []
        end
        object StaticText14: TStaticText
          Left = 4
          Top = 235
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 47
          Transparent = False
          StyleElements = []
        end
        object StaticText15: TStaticText
          Left = 4
          Top = 212
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Porto Destino'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 48
          Transparent = False
          StyleElements = []
        end
        object DBEdit18: TDBEdit
          Left = 124
          Top = 258
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Qtde_Container'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit20: TDBEdit
          Left = 561
          Top = 304
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Frete_Internacional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
        end
        object cTaxaMoeda: TDBEdit
          Left = 410
          Top = 281
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Taxa_FOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object DBEdit24: TDBEdit
          Left = 685
          Top = 281
          Width = 94
          Height = 21
          Color = 16766421
          DataField = 'FOB_Real'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object DBEdit25: TDBEdit
          Left = 685
          Top = 304
          Width = 94
          Height = 21
          Color = 16766421
          DataField = 'Frete_Real'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object StaticText16: TStaticText
          Left = 4
          Top = 258
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Qtde.Containers'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 49
          Transparent = False
          StyleElements = []
        end
        object StaticText18: TStaticText
          Left = 478
          Top = 304
          Width = 81
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Frete (ME)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 50
          Transparent = False
          StyleElements = []
        end
        object StaticText21: TStaticText
          Left = 374
          Top = 281
          Width = 34
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 51
          Transparent = False
          StyleElements = []
        end
        object StaticText22: TStaticText
          Left = 658
          Top = 281
          Width = 25
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'R$'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 52
          Transparent = False
          StyleElements = []
        end
        object StaticText23: TStaticText
          Left = 658
          Top = 304
          Width = 25
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'R$'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 53
          Transparent = False
          StyleElements = []
        end
        object DBEdit32: TDBEdit
          Left = 349
          Top = 373
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Taxa_Adiministrativa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
        end
        object StaticText29: TStaticText
          Left = 229
          Top = 373
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa Administrativa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 54
          Transparent = False
          StyleElements = []
        end
        object cDataRegistro_DI: TDBDateEdit
          Left = 235
          Top = 5
          Width = 152
          Height = 21
          DataField = 'Data'
          CheckOnExit = True
          DialogTitle = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlyphKind = gkCustom
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
          YearDigits = dyFour
        end
        object StaticText31: TStaticText
          Left = 390
          Top = 51
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Beneficio'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 55
          Transparent = False
          StyleElements = []
        end
        object StaticText32: TStaticText
          Left = 4
          Top = 281
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda FOB'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 56
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 124
          Top = 281
          Width = 247
          Height = 21
          DropDownCount = 10
          DataField = 'Moeda_FOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Nome'
          LookupDisplay = 'Codigo; Nome'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 21
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 510
          Top = 51
          Width = 268
          Height = 21
          DropDownCount = 5
          DataField = 'Beneficio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Nome'
          LookupDisplay = 'Estado;Nome'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 7
        end
        object StaticText39: TStaticText
          Left = 4
          Top = 396
          Width = 117
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IRPJ'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 57
          Transparent = False
          StyleElements = []
        end
        object DBEdit1: TDBEdit
          Left = 123
          Top = 396
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_IRPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
        end
        object StaticText40: TStaticText
          Left = 264
          Top = 396
          Width = 42
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CSLL'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 58
          Transparent = False
          StyleElements = []
        end
        object DBEdit2: TDBEdit
          Left = 308
          Top = 396
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_CSLL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        end
        object DBEdit4: TDBEdit
          Left = 175
          Top = 396
          Width = 86
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_IRPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        end
        object DBEdit8: TDBEdit
          Left = 360
          Top = 396
          Width = 86
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_CSLL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit28: TDBEdit
          Left = 124
          Top = 350
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Peso_Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object DBEdit29: TDBEdit
          Left = 349
          Top = 350
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Peso_Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object StaticText43: TStaticText
          Left = 4
          Top = 350
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso L'#237'quido'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 59
          Transparent = False
          StyleElements = []
        end
        object StaticText45: TStaticText
          Left = 229
          Top = 350
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso Bruto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 60
          Transparent = False
          StyleElements = []
        end
        object cVia: TDBComboBox
          Left = 124
          Top = 235
          Width = 264
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Modalidade_Frete'
          DropDownCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'AEREA'
            'ENTRADA FICTA'
            'FERROVIARIA'
            'FLUVIAL'
            'LACUSTRE'
            'MARITIMA'
            'MEIOS PROPRIOS'
            'POSTAL'
            'RODOVIARIA'
            'TUBO-CONDUTO')
          ParentFont = False
          Sorted = True
          TabOrder = 18
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 124
          Top = 166
          Width = 263
          Height = 21
          DropDownCount = 5
          DataField = 'Pais_Origem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 12
        end
        object StaticText47: TStaticText
          Left = 4
          Top = 189
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pa'#237's Destino'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 61
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 124
          Top = 189
          Width = 263
          Height = 21
          DropDownCount = 5
          DataField = 'Pais_Destino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 14
        end
        object StaticText48: TStaticText
          Left = 390
          Top = 166
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cidade Origem'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 62
          Transparent = False
          StyleElements = []
        end
        object StaticText49: TStaticText
          Left = 390
          Top = 189
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cidade Destino'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 63
          Transparent = False
          StyleElements = []
        end
        object DBEdit7: TDBEdit
          Left = 510
          Top = 166
          Width = 268
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cidade_Origem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit16: TDBEdit
          Left = 510
          Top = 189
          Width = 268
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cidade_Destino'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object StaticText50: TStaticText
          Left = 390
          Top = 212
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Porto Origem'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 64
          Transparent = False
          StyleElements = []
        end
        object DBEdit36: TDBEdit
          Left = 510
          Top = 212
          Width = 268
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Porto_Origem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object StaticText51: TStaticText
          Left = 4
          Top = 304
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 65
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 124
          Top = 304
          Width = 247
          Height = 21
          DropDownCount = 10
          DataField = 'Moeda_Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Nome'
          LookupDisplay = 'Codigo; Nome'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 25
        end
        object StaticText52: TStaticText
          Left = 374
          Top = 304
          Width = 34
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 66
          Transparent = False
          StyleElements = []
        end
        object DBEdit37: TDBEdit
          Left = 410
          Top = 304
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Taxa_Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        end
        object DBComboBox1: TDBComboBox
          Left = 280
          Top = 258
          Width = 197
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Tipo_Container'
          DropDownCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'BULK CONTEINER'
            'DRY BOX'
            'FLAT RACK'
            'HALF HEIGHT'
            'OPEN SIDE'
            'OPEN TOP'
            'PLATAFORM'
            'REEFER'
            'TANK'
            'VENTILATED')
          ParentFont = False
          Sorted = True
          TabOrder = 20
        end
        object StaticText10: TStaticText
          Left = 199
          Top = 258
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo Container'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 67
          Transparent = False
          StyleElements = []
        end
        object StaticText27: TStaticText
          Left = 4
          Top = 97
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Nota (Entrada)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 68
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 124
          Top = 97
          Width = 450
          Height = 21
          DropDownCount = 5
          DataField = 'Tipo_Nota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 9
        end
        object GroupBox1: TGroupBox
          Left = 4
          Top = 464
          Width = 774
          Height = 42
          Caption = 'Cliente Importador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 40
          object cNomeClienteImp: TDBEdit
            Left = 61
            Top = 16
            Width = 438
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Cliente_ImpNome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object StaticText1: TStaticText
            Left = 6
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Nome'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            Transparent = False
            StyleElements = []
          end
          object StaticText28: TStaticText
            Left = 502
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Estado'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
            Transparent = False
            StyleElements = []
          end
          object RxDBLookupCombo8: TRxDBLookupCombo
            Left = 557
            Top = 16
            Width = 205
            Height = 21
            DropDownCount = 5
            DataField = 'Cliente_ImpEstado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            LookupField = 'Codigo'
            LookupDisplay = 'Codigo; Nome'
            LookupDisplayIndex = 1
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 510
          Width = 774
          Height = 71
          Caption = 'Cliente Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 41
          object StaticText34: TStaticText
            Left = 6
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Nome'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            Transparent = False
            StyleElements = []
          end
          object StaticText35: TStaticText
            Left = 502
            Top = 16
            Width = 53
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Estado'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
            Transparent = False
            StyleElements = []
          end
          object DBEdit19: TDBEdit
            Left = 61
            Top = 16
            Width = 438
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Cliente_NotaNome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBCheckBox1: TDBCheckBox
            Left = 11
            Top = 45
            Width = 77
            Height = 17
            Caption = 'Contribuinte'
            DataField = 'Cliente_NotaContrib'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBCheckBox2: TDBCheckBox
            Left = 228
            Top = 45
            Width = 102
            Height = 17
            Caption = 'Simples Nacional'
            DataField = 'Cliente_NotaSimples'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBCheckBox3: TDBCheckBox
            Left = 107
            Top = 45
            Width = 95
            Height = 17
            Caption = 'Pessoa Juridica'
            DataField = 'Cliente_NotaJuridica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object RxDBLookupCombo9: TRxDBLookupCombo
            Left = 557
            Top = 16
            Width = 205
            Height = 21
            DropDownCount = 5
            DataField = 'Cliente_NotaEstado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            LookupField = 'Codigo'
            LookupDisplay = 'Codigo;Nome'
            LookupDisplayIndex = 1
            ParentFont = False
            TabOrder = 1
          end
          object DBCheckBox4: TDBCheckBox
            Left = 355
            Top = 45
            Width = 83
            Height = 17
            Caption = 'Zona Franca'
            DataField = 'Cliente_NotaZonaFranca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBCheckBox5: TDBCheckBox
            Left = 459
            Top = 45
            Width = 102
            Height = 17
            Caption = 'Consumidor Final'
            DataField = 'Cliente_NotaConsumidorFinal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBCheckBox6: TDBCheckBox
            Left = 581
            Top = 45
            Width = 184
            Height = 17
            Caption = 'N'#227'o destacar impostos creditaveis'
            DataField = 'Destacar_ImpCred'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
        end
        object StaticText36: TStaticText
          Left = 4
          Top = 74
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'INCOTERM'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 69
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 124
          Top = 74
          Width = 450
          Height = 21
          DropDownCount = 13
          DisplayAllFields = True
          DataField = 'INCOTERM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 8
        end
        object StaticText37: TStaticText
          Left = 390
          Top = 5
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186' do Processo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 70
          Transparent = False
          StyleElements = []
        end
        object DBEdit3: TDBEdit
          Left = 510
          Top = 5
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Processo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText38: TStaticText
          Left = 4
          Top = 28
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Produto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 71
          Transparent = False
          StyleElements = []
        end
        object DBEdit6: TDBEdit
          Left = 124
          Top = 28
          Width = 260
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Tipo_Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText54: TStaticText
          Left = 4
          Top = 373
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fator'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 72
          Transparent = False
          StyleElements = []
        end
        object DBEdit22: TDBEdit
          Left = 124
          Top = 373
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fator'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
        end
        object StaticText58: TStaticText
          Left = 4
          Top = 120
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Nota (Sa'#237'da)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 73
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 124
          Top = 120
          Width = 450
          Height = 21
          DropDownCount = 5
          DataField = 'Tipo_NotaSai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 10
        end
        object StaticText60: TStaticText
          Left = 450
          Top = 396
          Width = 68
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Entrada'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 74
          Transparent = False
          StyleElements = []
        end
        object DBEdit40: TDBEdit
          Left = 519
          Top = 396
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_ICMSEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object DBEdit41: TDBEdit
          Left = 631
          Top = 396
          Width = 58
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_ICMSSaida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 38
        end
        object StaticText61: TStaticText
          Left = 571
          Top = 396
          Width = 58
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMSSa'#237'da'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 75
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 124
          Top = 51
          Width = 262
          Height = 21
          DropDownCount = 5
          DataField = 'Modalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Descricao'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 6
        end
        object StaticText67: TStaticText
          Left = 390
          Top = 28
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto Destinado a'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 76
          Transparent = False
          StyleElements = []
        end
        object DBEdit47: TDBEdit
          Left = 510
          Top = 28
          Width = 268
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Produto_Destinado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object GroupBox3: TGroupBox
          Left = 4
          Top = 419
          Width = 774
          Height = 41
          Caption = 'Servi'#231'os (Impostos e Taxas)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
          object StaticText69: TStaticText
            Left = 159
            Top = 15
            Width = 30
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'PIS'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
            Transparent = False
            StyleElements = []
          end
          object DBEdit49: TDBEdit
            Left = 191
            Top = 15
            Width = 44
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Aliquota_PISServ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object StaticText70: TStaticText
            Left = 446
            Top = 15
            Width = 42
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'CSLL'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            Transparent = False
            StyleElements = []
          end
          object DBEdit50: TDBEdit
            Left = 490
            Top = 15
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Aliquota_CSLLServ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit51: TDBEdit
            Left = 294
            Top = 15
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Aliquota_COFINSServ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object StaticText71: TStaticText
            Left = 244
            Top = 15
            Width = 48
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'COFINS'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 8
            Transparent = False
            StyleElements = []
          end
          object StaticText72: TStaticText
            Left = 348
            Top = 15
            Width = 42
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'IRPJ'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 9
            Transparent = False
            StyleElements = []
          end
          object DBEdit52: TDBEdit
            Left = 392
            Top = 15
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Aliquota_IRPJServ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object StaticText73: TStaticText
            Left = 545
            Top = 15
            Width = 42
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'ISS'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 10
            Transparent = False
            StyleElements = []
          end
          object DBEdit53: TDBEdit
            Left = 589
            Top = 15
            Width = 50
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Aliquota_ISSServ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object StaticText68: TStaticText
            Left = 6
            Top = 15
            Width = 67
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Taxa Servi'#231'o'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
            Transparent = False
            StyleElements = []
          end
          object DBEdit48: TDBEdit
            Left = 75
            Top = 15
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Taxa_Servico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object StaticText124: TStaticText
          Left = 478
          Top = 350
          Width = 81
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = sbsSunken
          Caption = 'AFRMM'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 77
          Transparent = False
          StyleElements = []
        end
        object DBEdit54: TDBEdit
          Left = 561
          Top = 350
          Width = 95
          Height = 21
          DataField = 'Valor_AFRMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 78
        end
        object StaticText53: TStaticText
          Left = 4
          Top = 327
          Width = 118
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Seguro'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 79
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 124
          Top = 327
          Width = 247
          Height = 21
          DropDownCount = 10
          DataField = 'Moeda_Seguro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Nome'
          LookupDisplay = 'Codigo; Nome'
          LookupDisplayIndex = 1
          ParentFont = False
          TabOrder = 80
        end
        object StaticText19: TStaticText
          Left = 374
          Top = 327
          Width = 34
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 81
          Transparent = False
          StyleElements = []
        end
        object DBEdit21: TDBEdit
          Left = 410
          Top = 327
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Taxa_Seguro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 82
        end
        object StaticText9: TStaticText
          Left = 478
          Top = 327
          Width = 81
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Seguro (ME)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 83
          Transparent = False
          StyleElements = []
        end
        object cSeguro: TDBEdit
          Left = 561
          Top = 327
          Width = 95
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Seguro_PremioValor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 84
        end
        object StaticText24: TStaticText
          Left = 658
          Top = 327
          Width = 25
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'R$'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 85
          Transparent = False
          StyleElements = []
        end
        object DBEdit26: TDBEdit
          Left = 685
          Top = 327
          Width = 94
          Height = 21
          Color = 16766421
          DataField = 'Seguro_Real'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 86
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 594
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 787
        Height = 260
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object StaticText2: TStaticText
          Left = 5
          Top = 5
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object cProduto: TDBEdit
          Left = 103
          Top = 5
          Width = 669
          Height = 21
          DataField = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = cProdutoChange
        end
        object StaticText4: TStaticText
          Left = 5
          Top = 28
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'NCM'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 17
          Transparent = False
          StyleElements = []
        end
        object cNCM: TDBEdit
          Left = 103
          Top = 28
          Width = 106
          Height = 21
          Color = 16438246
          DataField = 'NCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = cNCMExit
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 51
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso L'#237'quido'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
          Transparent = False
          StyleElements = []
        end
        object DBEdit10: TDBEdit
          Left = 103
          Top = 51
          Width = 106
          Height = 21
          DataField = 'Peso_Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText17: TStaticText
          Left = 5
          Top = 97
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Unit'#225'rio (ME)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 19
          Transparent = False
          StyleElements = []
        end
        object cUnitario: TDBEdit
          Left = 103
          Top = 97
          Width = 106
          Height = 21
          DataField = 'Valor_UnitarioME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnExit = cUnitarioExit
        end
        object StaticText6: TStaticText
          Left = 5
          Top = 74
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Quantidade'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
          Transparent = False
          StyleElements = []
        end
        object DBEdit9: TDBEdit
          Left = 103
          Top = 74
          Width = 106
          Height = 21
          DataField = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText12: TStaticText
          Left = 5
          Top = 120
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'II'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
          Transparent = False
          StyleElements = []
        end
        object cAliquotaII: TDBEdit
          Left = 103
          Top = 120
          Width = 66
          Height = 21
          DataField = 'Aliquota_II'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText13: TStaticText
          Left = 5
          Top = 143
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object cAliquotaIPI: TDBEdit
          Left = 103
          Top = 143
          Width = 66
          Height = 21
          DataField = 'Aliquota_IpI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText25: TStaticText
          Left = 5
          Top = 166
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS (Entrada)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object cAliquotaPIS: TDBEdit
          Left = 103
          Top = 166
          Width = 66
          Height = 21
          DataField = 'Aliquota_PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText26: TStaticText
          Left = 5
          Top = 189
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS (Entrada)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 24
          Transparent = False
          StyleElements = []
        end
        object cAliquotaCOFINS: TDBEdit
          Left = 103
          Top = 189
          Width = 66
          Height = 21
          DataField = 'Aliquota_COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object cPesoBruto: TDBEdit
          Left = 371
          Top = 51
          Width = 121
          Height = 21
          DataField = 'Peso_Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText41: TStaticText
          Left = 280
          Top = 51
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso Bruto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
          Transparent = False
          StyleElements = []
        end
        object DBEdit13: TDBEdit
          Left = 171
          Top = 120
          Width = 106
          Height = 21
          DataField = 'Valor_II'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 171
          Top = 143
          Width = 106
          Height = 21
          DataField = 'Valor_IPI'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit15: TDBEdit
          Left = 171
          Top = 166
          Width = 106
          Height = 21
          DataField = 'Valor_PIS'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit23: TDBEdit
          Left = 171
          Top = 189
          Width = 106
          Height = 21
          DataField = 'Valor_COFINS'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object cUnitarioReal: TCurrencyEdit
          Left = 371
          Top = 97
          Width = 121
          Height = 21
          TabStop = False
          AutoSize = False
          DisplayFormat = ',##0.000000'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText42: TStaticText
          Left = 280
          Top = 97
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Unit'#225'rio (R$)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 26
          Transparent = False
          StyleElements = []
        end
        object StaticText46: TStaticText
          Left = 5
          Top = 212
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS (Entrada)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object DBEdit35: TDBEdit
          Left = 171
          Top = 212
          Width = 106
          Height = 21
          DataField = 'Valor_ICMSEntrada'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit33: TDBEdit
          Left = 103
          Top = 212
          Width = 66
          Height = 21
          DataField = 'Aliquota_ICMSEntrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object StaticText55: TStaticText
          Left = 280
          Top = 166
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS (Sa'#237'da)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 29
          Transparent = False
          StyleElements = []
        end
        object DBEdit12: TDBEdit
          Left = 371
          Top = 166
          Width = 66
          Height = 21
          DataField = 'Aliquota_PISSai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object StaticText56: TStaticText
          Left = 280
          Top = 189
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS (Sa'#237'da)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 31
          Transparent = False
          StyleElements = []
        end
        object DBEdit27: TDBEdit
          Left = 371
          Top = 189
          Width = 66
          Height = 21
          DataField = 'Aliquota_COFINSSai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
        end
        object DBEdit30: TDBEdit
          Left = 439
          Top = 166
          Width = 102
          Height = 21
          DataField = 'Valor_PISSai'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
          Visible = False
        end
        object DBEdit31: TDBEdit
          Left = 439
          Top = 189
          Width = 102
          Height = 21
          DataField = 'Valor_COFINSSai'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
          Visible = False
        end
        object StaticText57: TStaticText
          Left = 280
          Top = 212
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS (Sa'#237'da)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 35
          Transparent = False
          StyleElements = []
        end
        object DBEdit34: TDBEdit
          Left = 439
          Top = 212
          Width = 102
          Height = 21
          DataField = 'Valor_ICMSSaida'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        end
        object DBEdit38: TDBEdit
          Left = 371
          Top = 212
          Width = 66
          Height = 21
          DataField = 'Aliquota_ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object StaticText63: TStaticText
          Left = 5
          Top = 235
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS ST'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 38
          Transparent = False
          StyleElements = []
        end
        object DBEdit43: TDBEdit
          Left = 171
          Top = 235
          Width = 106
          Height = 21
          DataField = 'Valor_ICMSST'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
        end
        object DBEdit44: TDBEdit
          Left = 103
          Top = 235
          Width = 66
          Height = 21
          DataField = 'Aliquota_ICMSST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 40
        end
        object StaticText64: TStaticText
          Left = 280
          Top = 235
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'MVA'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 41
          Transparent = False
          StyleElements = []
        end
        object DBEdit45: TDBEdit
          Left = 371
          Top = 235
          Width = 66
          Height = 21
          DataField = 'Aliquota_MVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 42
        end
        object cTotalII: TCurrencyEdit
          Left = 280
          Top = 120
          Width = 96
          Height = 21
          DisplayFormat = ',0.00;'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 43
        end
        object cTotalIPI: TCurrencyEdit
          Left = 280
          Top = 143
          Width = 96
          Height = 21
          DisplayFormat = ',0.00;'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 44
        end
        object DBEdit46: TDBEdit
          Left = 713
          Top = 212
          Width = 58
          Height = 21
          DataField = 'Aliquota_ICMSRed2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 45
        end
      end
      object GradeProd: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 306
        Width = 787
        Height = 331
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Title.Alignment = taCenter
            Width = 688
            Visible = True
          end>
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 269
        Width = 787
        Height = 31
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object NavegaProdutos: TDBNavigator
          Left = 1
          Top = 1
          Width = 334
          Height = 29
          Cursor = crHandPoint
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
          Ctl3D = True
          Hints.Strings = (
            'Vai para o primeiro registro.'
            'Volta para o registro anterior.'
            'Vai para o pr'#243'ximo registro.'
            'Vai para o '#250'ltimo registro.'
            'Inlcuir um novo registro.'
            'Deletar o registro atual.'
            'Altera o registro atual.'
            'Salvar o registro no banco de dados.'
            'Cancelar as modifica'#231#245'es feitas no registro atual.'
            'Atualizar inform'#231#245'es do banco de dados.')
          ParentCtl3D = False
          ParentShowHint = False
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
          BeforeAction = NavegaProdutosBeforeAction
          OnClick = NavegaProdutosClick
        end
        object bDuplicarItem: TButton
          Left = 335
          Top = 1
          Width = 88
          Height = 29
          Align = alLeft
          Caption = 'Duplicar &Item'
          TabOrder = 1
          OnClick = bDuplicarItemClick
        end
      end
      object StaticText62: TStaticText
        Left = 547
        Top = 214
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'ICMS (Redu'#231#227'o 1/2)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        Transparent = False
        StyleElements = []
      end
      object DBEdit42: TDBEdit
        Left = 648
        Top = 214
        Width = 66
        Height = 21
        DataField = 'Aliquota_ICMSRed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Despesas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 594
      object gDespesas: TDBGrid
        Left = 2
        Top = 132
        Width = 781
        Height = 425
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = gDespesasCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Despesa'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 470
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Taxa'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_ME'
            Title.Alignment = taCenter
            Title.Caption = 'Valor ME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'CE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Custo_Saida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'CS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 96
        Width = 787
        Height = 30
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 1
        object bRemoveTudo: TButton
          Left = 271
          Top = 1
          Width = 88
          Height = 28
          Align = alLeft
          Caption = 'Remover &Tudo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = bRemoveTudoClick
        end
        object bBuscar: TButton
          Left = 359
          Top = 1
          Width = 144
          Height = 28
          Align = alLeft
          Caption = '&Buscar Processo Existente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = bBuscarClick
        end
        object bMarinha: TButton
          Left = 503
          Top = 1
          Width = 104
          Height = 28
          Align = alLeft
          Caption = '&Marinha Mercante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = bMarinhaClick
        end
        object NavegaDesp: TDBNavigator
          Left = 1
          Top = 1
          Width = 270
          Height = 28
          Cursor = crHandPoint
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
          Ctl3D = True
          Hints.Strings = (
            'Vai para o primeiro registro.'
            'Volta para o registro anterior.'
            'Vai para o pr'#243'ximo registro.'
            'Vai para o '#250'ltimo registro.'
            'Inlcuir um novo registro.'
            'Deletar o registro atual.'
            'Altera o registro atual.'
            'Salvar o registro no banco de dados.'
            'Cancelar as modifica'#231#245'es feitas no registro atual.'
            'Atualizar inform'#231#245'es do banco de dados.')
          ParentCtl3D = False
          ParentShowHint = False
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 3
          BeforeAction = NavegaDespBeforeAction
          OnClick = NavegaDespClick
        end
        object bPISCOFINS: TButton
          Left = 607
          Top = 1
          Width = 130
          Height = 28
          Align = alLeft
          Caption = '&Diferen'#231'a PIS/COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = bPISCOFINSClick
        end
      end
      object StaticText30: TStaticText
        Left = 147
        Top = 563
        Width = 147
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total das Despesas  (Entrada)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        Transparent = False
        StyleElements = []
      end
      object cTotalDespesasSai: TCurrencyEdit
        Left = 547
        Top = 563
        Width = 110
        Height = 21
        AutoSize = False
        Color = 16764262
        DisplayFormat = ',0.00;-,0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cTotalDespesas: TCurrencyEdit
        Left = 295
        Top = 563
        Width = 99
        Height = 21
        AutoSize = False
        Color = 16764262
        DisplayFormat = ',0.00;-,0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 787
        Height = 87
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 5
        object bPesq: TSpeedButton
          Left = 403
          Top = 50
          Width = 23
          Height = 23
          OnClick = bPesqClick
        end
        object cTipoValor: TRadioGroup
          Left = 5
          Top = 4
          Width = 385
          Height = 40
          Caption = 'Buscar valor utilizado anteriormente'
          Columns = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 1
          Items.Strings = (
            'Menor valor'
            'Valor m'#233'dio'
            'Maior valor')
          ParentFont = False
          TabOrder = 0
        end
        object cDespesa: TDBLookupComboBox
          Left = 53
          Top = 51
          Width = 350
          Height = 21
          DataField = 'Classificacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ParentFont = False
          TabOrder = 1
          OnCloseUp = cDespesaCloseUp
          OnKeyDown = cDespesaKeyDown
        end
        object StaticText20: TStaticText
          Left = 652
          Top = 51
          Width = 21
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'R$'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object StaticText33: TStaticText
          Left = 5
          Top = 51
          Width = 46
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Despesa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object cDespNac: TCurrencyEdit
          Left = 675
          Top = 51
          Width = 101
          Height = 21
          AutoSize = False
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText59: TStaticText
          Left = 530
          Top = 51
          Width = 23
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ME'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Transparent = False
          StyleElements = []
        end
        object cValorME: TCurrencyEdit
          Left = 555
          Top = 51
          Width = 94
          Height = 21
          AutoSize = False
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnChange = cValorMEChange
        end
        object StaticText65: TStaticText
          Left = 430
          Top = 51
          Width = 29
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          Transparent = False
          StyleElements = []
        end
        object cTaxa: TCurrencyEdit
          Left = 461
          Top = 51
          Width = 65
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = '##0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit39: TDBEdit
          Left = 689
          Top = 5
          Width = 84
          Height = 21
          DataField = 'Registro'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnChange = DBEdit39Change
        end
      end
      object StaticText66: TStaticText
        Left = 399
        Top = 563
        Width = 147
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total das Despesas  (Sa'#237'da)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        Transparent = False
        StyleElements = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Lista'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 594
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 793
        Height = 640
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_ImpNome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 117
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'INCOTERM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fornecedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo_Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Formulas dos C'#225'lculos'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 793
        Height = 640
        Align = alClient
        Color = 12320767
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        StyleElements = [seBorder]
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 684
    Width = 807
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bCalcular: TSpeedButton
      Left = 307
      Top = 1
      Width = 74
      Height = 29
      Cursor = crHandPoint
      Hint = '  Recalcula todos os totais  '
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = '&Calcular'
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      Spacing = 5
      OnClick = bCalcularClick
      ExplicitLeft = 301
      ExplicitTop = 3
    end
    object bSair: TButton
      Left = 735
      Top = 1
      Width = 71
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TButton
      Left = 570
      Top = 1
      Width = 77
      Height = 29
      Align = alLeft
      Caption = '&Imprimir Vert'
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 306
      Height = 29
      Cursor = crHandPoint
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 2
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bExcel: TButton
      Left = 495
      Top = 1
      Width = 75
      Height = 29
      Align = alLeft
      Caption = '&Gerar Excel'
      TabOrder = 3
      OnClick = bExcelClick
    end
    object bDuplicar: TButton
      Left = 381
      Top = 1
      Width = 114
      Height = 29
      Align = alLeft
      Caption = '&Duplicar Simula'#231#227'o'
      TabOrder = 4
      OnClick = bDuplicarClick
    end
    object bImpHor: TButton
      Left = 647
      Top = 1
      Width = 81
      Height = 29
      Align = alLeft
      Caption = '&Imprimir Horiz'
      TabOrder = 5
      OnClick = bImpHorClick
    end
  end
  object tNumero: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM SimulaImportacao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 426
    Top = 47
  end
  object tDespesa: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      'SELECT *'
      '      ,Valor_ME = Valor'
      'FROM SimulaDespesas'
      'where simulacao = 13'
      ''
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 618
    Top = 63
  end
  object tRegistro: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      
        'SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM SimulaDespesa' +
        's')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 386
    Top = 7
  end
  object tSomaDespesas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 490
    Top = 7
  end
  object tItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM SimulaProdutos')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 570
    Top = 7
  end
  object tSomaProdutos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 530
    Top = 63
  end
  object tSomaImpostos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 530
    Top = 119
  end
  object tProdutos: TMSQuery
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
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 306
    Top = 6
  end
  object tSimula: TMSQuery
    SQL.Strings = (
      'SELECT *,'
      
        '       Pais_OrigemNome = (SELECT Nome FROM Cybersoft_Cadastros.d' +
        'bo.Paises WHERE Codigo = Pais_Origem)'
      
        '      ,NCM_Descricao   = case (select Count(*) from SimulaProdut' +
        'os where Simulacao = si.Numero)'
      
        #9'                          when 1 then (select NCM from SimulaPr' +
        'odutos where Simulacao = si.Numero) else '#39'VARIOS'#39
      '                         end'
      
        '      ,Unidade_Descricao = case (select Count(*) from SimulaProd' +
        'utos where Simulacao = si.Numero group by NCM)'
      
        #9'                            when 1 then (select Unidade from NC' +
        'M where NCM = (select NCM from SimulaProdutos where Simulacao = ' +
        'si.Numero)) else '#39'VARIOS'#39
      '                         end'
      
        '      ,Unitario_Descricao = case (select Count(*) from SimulaPro' +
        'dutos where Simulacao = si.Numero)'
      
        #9'                         when 1 then (select cast(cast(Valor_Un' +
        'itarioReal AS NUMERIC(15,2)) as varchar(17)) from SimulaProdutos' +
        ' where Simulacao = si.Numero) else '#39'VARIOS'#39
      '                            end'
      
        '      ,Volumes = (select sum(Quantidade) from SimulaProdutos whe' +
        're Simulacao = si.Numero)'
      
        '      ,Valor_AFRMM = isnull((select sum(isnull(Valor, 0)) from S' +
        'imulaDespesas where Simulacao = si.Numero and Despesa like '#39'%AFR' +
        'MM%'#39'), 0)'
      
        '      ,Aliquota_II = case (select Count(*) from SimulaProdutos w' +
        'here Simulacao = si.Numero group by Aliquota_II)'
      
        '                          when 1 then (select cast(cast(Aliquota' +
        '_II AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where Si' +
        'mulacao = si.Numero) else '#39'VARIOS'#39' '
      '                     end'
      
        '      ,Aliquota_IPI = case (select Count(*) from SimulaProdutos ' +
        'where Simulacao = si.Numero group by Aliquota_IPI)'
      
        '                           when 1 then (select cast(cast(Aliquot' +
        'a_IPI AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where ' +
        'Simulacao = si.Numero) else '#39'VARIOS'#39' '
      '                      end'
      
        '      ,Aliquota_PIS = case (select Count(*) from SimulaProdutos ' +
        'where Simulacao = si.Numero group by Aliquota_PIS)'
      
        '                           when 1 then (select cast(cast(Aliquot' +
        'a_PIS AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos where ' +
        'Simulacao = si.Numero) else '#39'VARIOS'#39' '
      '                      end'
      
        '      ,Aliquota_COFINS = case (select Count(*) from SimulaProdut' +
        'os where Simulacao = si.Numero group by Aliquota_COFINS)'
      
        '                              when 1 then (select cast(cast(Aliq' +
        'uota_COFINS AS NUMERIC(6,2)) as varchar(6)) from SimulaProdutos ' +
        'where Simulacao = si.Numero) else '#39'VARIOS'#39' '
      '                         end'
      '      ,Aliquota_ICMSEnt = case isnull(Aliquota_ICMSEntrada, 0)'
      
        '                               when 0 then '#39'DIFERIDO'#39' else cast(' +
        'cast(Aliquota_ICMSEntrada AS NUMERIC(6,2)) as varchar(6))'
      '                          end'
      
        '      ,Aliquota_ICMSSai = case (select count(distinct Aliquota_I' +
        'CMS) from SimulaProdutos sp where sp.Simulacao = si.Numero)'
      
        '                               when 1 then (select distinct Aliq' +
        'uota_ICMS from SimulaProdutos sp where sp.Simulacao = si.Numero)'
      '                          end'
      
        '      ,Aliquota_AFRMM   = (select cast(Percentual_Marinha AS NUM' +
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
      'FROM   SimulaImportacao si'
      'where numero = 20'
      'ORDER  BY Numero')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 242
    Top = 9
  end
  object dstSimula: TDataSource
    DataSet = tSimula
    Left = 240
    Top = 56
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 633
    Top = 10
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
  object tDespesaAdm: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      'SELECT *'
      '      ,Valor_ME = Valor'
      'FROM SimulaDespesas'
      'WHERE Custo = 0'
      'and simulacao = 13'
      ''
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 618
    Top = 167
  end
  object dstDespesaAdm: TDataSource
    DataSet = tDespesaAdm
    Left = 620
    Top = 215
  end
  object tDespesaSai: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      'SELECT *'
      '      ,Valor_ME = Valor'
      'FROM SimulaDespesas'
      ''
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 538
    Top = 175
  end
  object dstDespesaSai: TDataSource
    DataSet = tDespesaSai
    Left = 536
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 286
    Top = 287
    object CustodeEntrada1: TMenuItem
      Caption = 'Custo de Entrada'
      OnClick = CustodeEntrada1Click
    end
    object CustodeSada1: TMenuItem
      Caption = 'Custo de Sa'#237'da'
      OnClick = CustodeSada1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Nenhum1: TMenuItem
      Caption = 'Nenhum'
      OnClick = Nenhum1Click
    end
    object Ambos1: TMenuItem
      Caption = 'Ambos'
      OnClick = Ambos1Click
    end
  end
  object ttmp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 424
    Top = 100
  end
  object tDespesaMar: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    SQL.Strings = (
      'select * from SimulaDespesas where Simulacao = 13')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 289
    Top = 358
  end
  object dstDespesaMar: TDataSource
    DataSet = tDespesaMar
    Left = 289
    Top = 406
  end
end
