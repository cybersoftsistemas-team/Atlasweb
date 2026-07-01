object fFiscalNFTerceirosXML: TfFiscalNFTerceirosXML
  Left = 0
  Top = 0
  ClientHeight = 516
  ClientWidth = 831
  Caption = 'fFiscalNFTerceirosXML'
  Color = clWhite
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 481
    Width = 831
    Height = 35
    Hint = ''
    Margins.Top = 0
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
    ExplicitTop = 518
    ExplicitWidth = 843
    object bSair: TUniSpeedButton
      AlignWithMargins = True
      Left = 789
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
      OnClick = bSairClick
      ExplicitLeft = 801
    end
    object bImportar: TUniSpeedButton
      AlignWithMargins = True
      Left = 686
      Top = 1
      Width = 101
      Height = 33
      Hint = 'Adicionar um Item'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Importar'
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 22
      TabOrder = 2
      OnClick = bImportarClick
      ExplicitLeft = 698
    end
  end
  object UniContainerPanel4: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 481
    Hint = ''
    ParentColor = False
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    TabOrder = 1
    ExplicitWidth = 843
    ExplicitHeight = 518
    object cDataEnt: TUniDateTimePicker
      Left = 22
      Top = 20
      Width = 290
      Height = 25
      Hint = ''
      DateTime = 46204.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      FieldLabel = 'Data de Entrada'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
      BorderStyle = ubsInset
    end
    object cOper: TUniDBLookupComboBox
      Left = 22
      Top = 47
      Width = 700
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 2
      Color = clWindow
      FieldLabel = 'Opera'#231#227'o Fiscal'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cRamo: TUniDBLookupComboBox
      Left = 22
      Top = 74
      Width = 700
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 3
      Color = clWindow
      FieldLabel = 'Ramo Atividade (Forn)'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cTipoProd: TUniDBLookupComboBox
      Left = 22
      Top = 209
      Width = 465
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 4
      Color = clWindow
      FieldLabel = 'Tipo de Mercadoria'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cCusto: TUniDBLookupComboBox
      Left = 22
      Top = 101
      Width = 700
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 5
      Color = clWindow
      FieldLabel = 'Centro de Custos'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cProcImp: TUniDBLookupComboBox
      Left = 22
      Top = 128
      Width = 399
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 6
      Color = clWindow
      FieldLabel = 'Processo (Imp)'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cProcExp: TUniDBLookupComboBox
      Left = 22
      Top = 155
      Width = 399
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 7
      Color = clWindow
      FieldLabel = 'Processo (Exp)'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cDUIMP: TUniEdit
      Left = 428
      Top = 128
      Width = 294
      Height = 25
      Hint = ''
      BorderStyle = ubsInset
      Text = 'cDUIMP'
      TabOrder = 8
      FieldLabel = 'DUIMP'
      FieldLabelWidth = 60
      FieldLabelSeparator = ' '
    end
    object cDUE: TUniEdit
      Left = 428
      Top = 155
      Width = 294
      Height = 25
      Hint = ''
      BorderStyle = ubsInset
      Text = 'UniEdit1'
      TabOrder = 9
      FieldLabel = 'DUIMP'
      FieldLabelWidth = 60
      FieldLabelSeparator = ' '
    end
    object cEmb: TUniDBLookupComboBox
      Left = 22
      Top = 182
      Width = 700
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 10
      Color = clWindow
      FieldLabel = 'Embarque'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cOrig: TUniDBLookupComboBox
      Left = 22
      Top = 236
      Width = 465
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 11
      Color = clWindow
      FieldLabel = 'Origem da Mercadoria'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cFinal: TUniDBLookupComboBox
      Left = 22
      Top = 263
      Width = 465
      Height = 25
      Hint = ''
      ListField = 'Codigo;Descricao'
      KeyField = 'Codigo'
      ListFieldIndex = 1
      BorderStyle = ubsInset
      ClearButton = True
      AnyMatch = True
      TabOrder = 12
      Color = clWindow
      FieldLabel = 'Finalidade da Mercadoria'
      FieldLabelWidth = 130
      FieldLabelSeparator = ' '
    end
    object cEscala: TUniCheckBox
      Left = 506
      Top = 211
      Width = 216
      Height = 25
      Hint = ''
      Caption = 'Produzido em Escala Relevante'
      TabOrder = 13
    end
    object UniGroupBox1: TUniGroupBox
      Left = 319
      Top = 304
      Width = 280
      Height = 160
      Hint = ''
      Caption = 'Imobilizado'
      TabOrder = 14
      object cImoAliq: TUniFormattedNumberEdit
        Left = 14
        Top = 43
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 1
        FieldLabel = 'Al'#237'quota'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cImoBC: TUniFormattedNumberEdit
        Left = 14
        Top = 70
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 2
        FieldLabel = 'Base de C'#225'lculo'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cImoValor: TUniFormattedNumberEdit
        Left = 14
        Top = 97
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 3
        FieldLabel = 'Valor'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cUso: TUniComboBox
        Left = 14
        Top = 16
        Width = 250
        Height = 25
        Hint = ''
        Style = csDropDownList
        Text = ''
        Items.Strings = (
          'Bem'
          'Componente')
        TabOrder = 4
        FieldLabel = 'Uso'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        IconItems = <>
      end
    end
    object cSubst: TUniCheckBox
      Left = 362
      Top = 18
      Width = 216
      Height = 25
      Hint = ''
      Caption = 'Substituir Notas Fiscais ja cadastradas.'
      TabOrder = 15
    end
    object cPreco: TUniGroupBox
      Left = 17
      Top = 304
      Width = 281
      Height = 160
      Hint = ''
      Caption = 'Forma'#231#227'o do Pre'#231'o de Venda'
      TabOrder = 16
      object cLucro: TUniFormattedNumberEdit
        Left = 14
        Top = 16
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 1
        FieldLabel = 'Lucro'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cComissao: TUniFormattedNumberEdit
        Left = 14
        Top = 43
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 2
        FieldLabel = 'Comiss'#227'o'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cCustoFin: TUniFormattedNumberEdit
        Left = 14
        Top = 70
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 3
        FieldLabel = 'Custo Financeiro'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cCustoFixo: TUniFormattedNumberEdit
        Left = 14
        Top = 97
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 4
        FieldLabel = 'Custo Financeiro'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cMargem: TUniFormattedNumberEdit
        Left = 14
        Top = 124
        Width = 250
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Alignment = taRightJustify
        TabOrder = 5
        FieldLabel = 'Custo Financeiro'
        FieldLabelWidth = 130
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
    end
    object gPerfil: TUniGroupBox
      Left = 620
      Top = 304
      Width = 191
      Height = 160
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Caracter'#237'sticas do Emitente'
      TabOrder = 17
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Grupo'#39';'#13#10'}'#13#10)
      object cIsento: TUniCheckBox
        Left = 13
        Top = 16
        Width = 97
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Isento de IE'
        ParentFont = False
        Font.Height = -13
        TabOrder = 1
        FieldLabelWidth = 0
      end
      object cSimples_Nacional: TUniCheckBox
        Left = 13
        Top = 37
        Width = 130
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Simples_Nacional'
        ParentFont = False
        Font.Height = -13
        TabOrder = 2
        FieldLabelWidth = 120
      end
      object cZona_Franca: TUniCheckBox
        Left = 13
        Top = 58
        Width = 109
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Zona_Franca'
        ParentFont = False
        Font.Height = -13
        TabOrder = 3
        FieldLabelWidth = 120
      end
      object cMEI: TUniCheckBox
        Left = 13
        Top = 100
        Width = 62
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'MEI'
        ParentFont = False
        Font.Height = -13
        TabOrder = 4
        FieldLabelWidth = 120
      end
      object cInscricaoST: TUniCheckBox
        Left = 13
        Top = 79
        Width = 159
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Possui Inscri'#231#227'o de ST'
        ParentFont = False
        Font.Height = -13
        TabOrder = 5
        FieldLabelWidth = 120
      end
      object cMicro: TUniCheckBox
        Left = 13
        Top = 122
        Width = 118
        Height = 25
        Hint = ''
        ShowHint = True
        Caption = 'Micro Empresa'
        ParentFont = False
        Font.Height = -13
        TabOrder = 6
        FieldLabelWidth = 120
      end
    end
  end
  object Arquivos: TUniFileUpload
    Filter = '*.xml'
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please select a file'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    MultipleFiles = True
    OnCompleted = ArquivosCompleted
    Left = 751
    Top = 100
  end
end
