object fComexPOImportar: TfComexPOImportar
  Left = 0
  Top = 0
  ClientHeight = 685
  ClientWidth = 1116
  Caption = ''
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnActivate = UniFormActivate
  MonitoredKeys.Keys = <>
  Font.Name = 'MS Sans Serif'
  OnDestroy = uniFrameDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 647
    Width = 1110
    Height = 35
    Hint = ''
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsInset
    Caption = ''
    object Progresso: TUniProgressBar
      Left = 8
      Top = 6
      Width = 396
      Hint = ''
      Visible = False
      Text = ''
      TabOrder = 0
    end
    object bImportarCli: TUniButton
      Left = 1002
      Top = 1
      Width = 66
      Height = 33
      Hint = ''
      Enabled = False
      Caption = '&Importar'
      Align = alRight
      TabOrder = 1
      OnClick = bImportarCliClick
    end
    object blayout: TUniButton
      Left = 917
      Top = 1
      Width = 85
      Height = 33
      Hint = ''
      Caption = '&Salvar Layout'
      Align = alRight
      TabOrder = 2
      OnClick = blayoutClick
    end
    object bSair: TUniSpeedButton
      Left = 1068
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 4
      OnClick = bSairClick
    end
  end
  object Pasta: TUniPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1110
    Height = 638
    Hint = ''
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Produtos'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
          's = '#39'FichaSSombra'#39';'#13#10'}')
      object UniPanel1: TUniPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1096
        Height = 93
        Hint = ''
        Align = alTop
        TabOrder = 0
        BorderStyle = ubsInset
        ShowCaption = False
        Caption = 'UniPanel1'
        object cArqProd: TUniEdit
          Left = 5
          Top = 6
          Width = 809
          Height = 25
          Hint = ''
          BorderStyle = ubsInset
          Text = ''
          TabOrder = 1
          FieldLabel = 'Arquivo'
          FieldLabelWidth = 70
          FieldLabelSeparator = ' '
          OnChangeValue = cArqProdChangeValue
        end
        object bArqProd: TUniFileUploadButton
          Left = 816
          Top = 6
          Width = 25
          Height = 25
          Hint = ''
          Caption = ''
          Filter = 
            'Planilha do Microsoft Excel (xlsx)|*.xlsx|Planilha do Microsoft ' +
            'Excel (xls)|*.xls'
          Images = UniMainModule.imgBotoes
          ImageIndex = 9
          Messages.Uploading = 'Fazendo upload...'
          Messages.PleaseWait = 'Por favor, aguarde'
          Messages.UploadError = 'Erro ao carregar'
          Messages.UploadTimeout = 'Tempo limite...'
          Messages.MaxSizeError = 'O arquivo '#233' maior que o tamanho m'#225'ximo permitido.'
          Messages.MaxFilesError = 'Voc'#234' pode enviar no m'#225'ximo %d arquivos.'
          ShowUploadingMsg = False
          OnCompleted = bArqProdCompleted
        end
        object cLinhaIniCli: TUniSpinEdit
          Left = 5
          Top = 33
          Width = 140
          Height = 25
          Hint = ''
          Value = 2
          MaxValue = 10000
          MinValue = 1
          TabOrder = 3
          Alignment = taRightJustify
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FieldLabel = 'Linha Inicial'
          FieldLabelWidth = 70
          FieldLabelSeparator = ' '
        end
        object cApagarCli: TUniCheckBox
          Left = 188
          Top = 39
          Width = 147
          Height = 17
          Hint = ''
          Caption = 'Apagar os itens existentes.'
          TabOrder = 4
          OnClick = cApagarCliClick
        end
        object cCodigo: TUniCheckBox
          Left = 188
          Top = 62
          Width = 213
          Height = 17
          Hint = ''
          Visible = False
          Checked = True
          Caption = 'Utilizar c'#243'digo dos cadastros da planilha.'
          TabOrder = 5
        end
        object cLinhaFimCli: TUniSpinEdit
          Left = 5
          Top = 60
          Width = 140
          Height = 25
          Hint = ''
          Value = 2
          MaxValue = 10000
          MinValue = 1
          TabOrder = 6
          Alignment = taRightJustify
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FieldLabel = 'Linha Final'
          FieldLabelWidth = 70
          FieldLabelSeparator = ' '
        end
      end
      object UniPanel2: TUniPanel
        AlignWithMargins = True
        Left = 3
        Top = 102
        Width = 1096
        Height = 505
        Hint = ''
        Align = alClient
        TabOrder = 1
        BorderStyle = ubsInset
        Caption = 'UniPanel2'
        object Grade: TUniStringGrid
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 859
          Height = 264
          Hint = ''
          ClientEvents.ExtEvents.Strings = (
            
              'cellcontextmenu=function cellcontextmenu(sender, td, cellIndex, ' +
              'record, tr, rowIndex, e, eOpts)'#13#10'{'#13#10'  e.preventDefault();'#13#10'}')
          FixedCols = 0
          FixedRows = 2
          RowCount = 3
          ColCount = 2
          DefaultColWidth = 120
          DefaultRowHeight = 18
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goAlwaysShowEditor, goThumbTracking]
          Columns = <>
          BorderStyle = ubsFrameRaised
          Align = alClient
          TabOrder = 1
          ParentFont = False
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
        end
        object UniPanel3: TUniPanel
          AlignWithMargins = True
          Left = 869
          Top = 4
          Width = 223
          Height = 264
          Hint = ''
          Align = alRight
          TabOrder = 2
          BorderStyle = ubsInset
          ShowCaption = False
          Caption = 'UniPanel3'
          object cCampos: TUniListBox
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 215
            Height = 218
            Hint = ''
            Align = alClient
            TabOrder = 1
            ParentFont = False
            Font.Height = -12
            Font.Name = 'Calibri'
            Sorted = True
            MultiSelect = True
            BorderStyle = ubsFrameRaised
            FieldLabel = 'Campos da tabela'
            FieldLabelAlign = laTop
            OnDblClick = cCamposDblClick
          end
          object UniPanel4: TUniPanel
            AlignWithMargins = True
            Left = 4
            Top = 228
            Width = 215
            Height = 32
            Hint = ''
            Align = alBottom
            TabOrder = 2
            BorderStyle = ubsInset
            ShowCaption = False
            Caption = 'UniPanel4'
            object bAdicionar: TUniSpeedButton
              Left = 154
              Top = 1
              Width = 30
              Height = 30
              Hint = 'Adicionar novo registro.'
              Caption = ''
              Align = alRight
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 0
              TabOrder = 1
              OnClick = bAdicionarClick
            end
            object bExcluir: TUniSpeedButton
              Left = 184
              Top = 1
              Width = 30
              Height = 30
              Hint = 'Excluir reegistro corrente.'
              Caption = ''
              Align = alRight
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 2
              TabOrder = 2
              OnClick = bExcluirClick
            end
          end
        end
        object DBGrid1: TUniDBGrid
          AlignWithMargins = True
          Left = 4
          Top = 274
          Width = 1088
          Height = 133
          Hint = ''
          TitleFont.Name = 'MS Sans Serif'
          DataSource = dstNCM
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          BorderStyle = ubsFrameRaised
          Align = alBottom
          TabOrder = 3
          Columns = <
            item
              FieldName = 'NCM'
              Title.Alignment = taCenter
              Title.Caption = 'NCM'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 70
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Texto'
              Title.Alignment = taCenter
              Title.Caption = 'Texto'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 476
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'UM'
              Title.Alignment = taCenter
              Title.Caption = 'UM'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 40
              Font.Height = -13
              Font.Name = 'Calibri'
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'ICMS'
              Title.Alignment = taCenter
              Title.Caption = 'ICMS'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 100
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'IPI'
              Title.Alignment = taCenter
              Title.Caption = 'IPI'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 45
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'II'
              Title.Alignment = taCenter
              Title.Caption = 'II'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 45
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'PIS'
              Title.Alignment = taCenter
              Title.Caption = 'PIS'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 45
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'COFINS'
              Title.Alignment = taCenter
              Title.Caption = 'COFINS'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 45
              Font.Height = -13
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'CEST'
              Title.Alignment = taCenter
              Title.Caption = 'CEST'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 28
              Font.Height = -13
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'EX'
              Title.Alignment = taCenter
              Title.Caption = 'EX'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 28
              Font.Height = -13
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'AntD'
              Title.Alignment = taCenter
              Title.Caption = 'Dmp'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 28
              Font.Height = -13
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'NVE'
              Title.Alignment = taCenter
              Title.Caption = 'NVE'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 28
              Font.Height = -13
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'CIDE'
              Title.Alignment = taCenter
              Title.Caption = 'CIDE'
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri'
              Title.Font.Style = [fsBold]
              Width = 28
              Font.Height = -13
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end
            item
              FieldName = 'LI'
              Title.Alignment = taCenter
              Title.Caption = 'LI'
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 28
              Font.Height = -13
              Font.Name = 'Webdings'
              Font.Style = [fsBold]
              Alignment = taCenter
              ReadOnly = True
            end>
        end
        object cLog: TUniMemo
          AlignWithMargins = True
          Left = 4
          Top = 413
          Width = 1088
          Height = 88
          Hint = ''
          BorderStyle = ubsInset
          Lines.Strings = (
            'cLog')
          ParentFont = False
          Font.Name = 'Courier New'
          Align = alBottom
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Purchase Order (PO)'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
          ' '#39'FichaSSombra'#39';'#13#10'}')
      DesignSize = (
        1102
        610)
      object cLinhaIniPO: TUniSpinEdit
        Left = 14
        Top = 40
        Width = 160
        Height = 25
        Hint = ''
        Value = 4
        MaxValue = 10000
        MinValue = 1
        TabOrder = 0
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        FieldLabel = 'Intervalo de Linhas'
        FieldLabelSeparator = ' '
        OnChange = cLinhaIniPOChange
      end
      object cLinhaFimPO: TUniSpinEdit
        Left = 14
        Top = 67
        Width = 160
        Height = 25
        Hint = ''
        Value = 4
        MaxValue = 10000
        MinValue = 1
        TabOrder = 1
        Alignment = taRightJustify
        ParentFont = False
        Font.Style = [fsBold]
        FieldLabel = 'At'#233
        FieldLabelSeparator = ' '
      end
      object GradePO: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 161
        Width = 1096
        Height = 449
        Hint = ''
        Margins.Bottom = 0
        TitleFont.Name = 'MS Sans Serif'
        DataSource = dstPlanPO
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        BorderStyle = ubsInset
        Align = alBottom
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 4
        Columns = <
          item
            FieldName = 'Item'
            Title.Alignment = taCenter
            Title.Caption = 'ITEM'
            Title.Font.Style = [fsBold]
            Width = 36
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTO'
            Title.Font.Style = [fsBold]
            Width = 65
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'DESCRIPTION'
            Title.Font.Style = [fsBold]
            Width = 400
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Caption = 'NCM'
            Title.Font.Style = [fsBold]
            Width = 70
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Package_Type'
            Title.Alignment = taCenter
            Title.Caption = 'PKGS TYPE'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Qty_Pkgs'
            Title.Alignment = taCenter
            Title.Caption = 'QTY PKGS'
            Title.Font.Style = [fsBold]
            Width = 72
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Net_Qty'
            Title.Alignment = taCenter
            Title.Caption = 'NET QTY'
            Title.Font.Style = [fsBold]
            Width = 74
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Unidade'
            Title.Alignment = taCenter
            Title.Caption = 'UN'
            Title.Font.Style = [fsBold]
            Width = 50
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Total_Qty'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL QTY'
            Title.Font.Style = [fsBold]
            Width = 80
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Unit_Price'
            Title.Alignment = taCenter
            Title.Caption = 'UNIT PRICE'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end>
      end
      object cArquivoPO: TUniFileUploadButton
        Left = 821
        Top = 13
        Width = 25
        Height = 25
        Hint = ''
        Caption = ''
        Filter = 
          'Planilha do Microsoft Excel (xlsx)|*.xlsx|Planilha do Microsoft ' +
          'Excel (xls)|*.xls'
        Images = UniMainModule.imgBotoes
        ImageIndex = 9
        Messages.Uploading = 'Uploading...'
        Messages.PleaseWait = 'Please Wait'
        Messages.UploadError = 'Upload Error'
        Messages.UploadTimeout = 'Timeout occurred...'
        Messages.MaxSizeError = 'File is bigger than maximum allowed size'
        Messages.MaxFilesError = 'You can upload maximum %d files.'
        ShowUploadingMsg = False
        OnCompleted = cArquivoPOCompleted
      end
      object bImportarPO: TUniButton
        Left = 1800
        Top = 9
        Width = 66
        Height = 47
        Hint = ''
        Enabled = False
        Caption = '&Importar'
        Anchors = [akTop, akRight]
        TabOrder = 2
      end
      object cApagarPO: TUniCheckBox
        Left = 212
        Top = 56
        Width = 154
        Height = 17
        Hint = ''
        Caption = 'Apagar os itens existentes.'
        TabOrder = 5
        OnClick = cApagarPOClick
      end
      object cArqPO: TUniEdit
        Left = 14
        Top = 13
        Width = 804
        Height = 25
        Hint = ''
        BorderStyle = ubsInset
        Text = 'cArquivo'
        TabOrder = 6
        FieldLabel = 'Arquivo'
        FieldLabelSeparator = ' '
      end
    end
    object TabSheet3: TUniTabSheet
      Hint = ''
      ImageIndex = 2
      Caption = 'LOG'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
          ' '#39'FichaSSombra'#39';'#13#10'}')
      object Memo1: TUniMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1096
        Height = 607
        Hint = ''
        Margins.Bottom = 0
        BorderStyle = ubsInset
        ParentFont = False
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object dstPlanPO: TDataSource
    DataSet = tPlanPO
    Left = 280
    Top = 265
  end
  object tPlanPO: TClientDataSet
    PersistDataPacket.Data = {
      300100009619E0BD01000000180000000B000000000003000000300104497465
      6D020001000000000011436F6469676F5F4D65726361646F7269610200010000
      0000000944657363726963616F020049000000010005574944544802000200F4
      01034E434D01004900000001000557494454480200020008000C5061636B6167
      655F547970650100490000000100055749445448020002001400085174795F50
      6B67730400010000000000074E65745F517479080004000000000007556E6964
      616465010049000000010005574944544802000200140009546F74616C5F5174
      7908000400000000000A556E69745F5072696365080004000000010007535542
      545950450200490006004D6F6E65790005546F74616C08000400000001000753
      5542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 279
    Top = 214
    object tPlanPOItem: TSmallintField
      Alignment = taCenter
      DisplayWidth = 3
      FieldName = 'Item'
      DisplayFormat = '000'
    end
    object tPlanPOCodigo_Mercadoria: TSmallintField
      FieldName = 'Codigo_Mercadoria'
    end
    object tPlanPODescricao: TStringField
      FieldName = 'Descricao'
      Size = 500
    end
    object tPlanPONCM: TStringField
      Alignment = taCenter
      FieldName = 'NCM'
      EditMask = '####.##.##;0; '
      Size = 8
    end
    object tPlanPOPackage_Type: TStringField
      FieldName = 'Package_Type'
    end
    object tPlanPOQty_Pkgs: TIntegerField
      FieldName = 'Qty_Pkgs'
    end
    object tPlanPONet_Qty: TFloatField
      FieldName = 'Net_Qty'
      DisplayFormat = ',##0.000'
    end
    object tPlanPOUnidade: TStringField
      FieldName = 'Unidade'
    end
    object tPlanPOTotal_Qty: TFloatField
      FieldName = 'Total_Qty'
      DisplayFormat = ',##0.000'
    end
    object tPlanPOUnit_Price: TCurrencyField
      FieldName = 'Unit_Price'
      DisplayFormat = ',##0.00'
    end
    object tPlanPOTotal: TCurrencyField
      FieldName = 'Total'
      DisplayFormat = ',##0.00'
    end
  end
  object dstPlanCli: TDataSource
    DataSet = tPlanCli
    Left = 352
    Top = 265
  end
  object tPlanCli: TClientDataSet
    PersistDataPacket.Data = {
      CD0B00009619E0BD010000001800000069000000000003000000CD0B06436F64
      69676F040001000000000011436F6469676F5F466162726963616E7465010049
      0000000100055749445448020002001400045469706F04000100000000000755
      6E69646164650100490000000100055749445448020002000300125175616E74
      69646164655F556E69646164650800040000000000034E434D01004900000001
      00055749445448020002000A000C5065736F5F4C69717569646F080004000000
      00000A5065736F5F427275746F08000400000000001244657363726963616F5F
      526564757A6964610100490000000100055749445448020002003C0009446573
      63726963616F0200490000000100055749445448020002008813104465736372
      6963616F5F496E676C657302004900000001000557494454480200020088130C
      416C6971756F74615F49504908000400000000000B416C6971756F74615F4949
      08000400000000000C416C6971756F74615F50495308000400000000000F416C
      6971756F74615F434F46494E530800040000000000095469706F5F4974656D02
      000100000000000956616C6F725F495049080004000000000012436C61737365
      456E7175616472615F4950490100490020000200075355425459504502004900
      0A00466978656443686172000557494454480200020001000D44756D70696E67
      5F56616C6F7208000400000000000A466F726E656365646F7204000100000000
      000F466F726E656365646F725F4E6F6D65010049000000010005574944544802
      0002003C000A466162726963616E746504000100000000000B56616C6F725F56
      656E6461080004000000010007535542545950450200490006004D6F6E657900
      1056616C6F725F437573746F4D6564696F080004000000010007535542545950
      450200490006004D6F6E6579000D56616C6F725F456E74726164610800040000
      00010007535542545950450200490006004D6F6E6579000E5469706F5F436F6E
      76657273616F01004900200002000753554254595045020049000A0046697865
      6443686172000557494454480200020001000E5265647563616F5F434F46494E
      5308000400000000000B5265647563616F5F5049530800040000000000054C69
      6E68610200010000000000044754494E01004900000001000557494454480200
      02000E000E556E69646164655F4F726967656D01004900000001000557494454
      480200020003000C4754494E5F556E6964616465010049000000010005574944
      5448020002000E00074C61726775726108000400000000000B436F6D7072696D
      656E746F080004000000000006416C7475726108000400000000000C49434D53
      5F5265647563616F0800040000000000125175616E7469646164655F566F6C75
      6D657308000400000000000B53656C6563696F6E61646F020003000000000007
      44756D70696E6702000300000000000A52656369636C6176656C020003000000
      00000A436F6469676F5F414E5001004900000001000557494454480200020014
      0011436F6469676F5F50726F7669736F72696F04000100000000000B52656475
      63616F5F49504908000400000000000A5265647563616F5F4949080004000000
      00001241636F72646F5F54617269666172696F49490800040000000000134163
      6F72646F5F54617269666172696F49504908000400000000000A456E74726164
      615F535402000300000000000A4465736174697661646F02000300000000000E
      437573746F5F53656C657469766F0200030000000000085049535F4E6F746108
      000400000000000B434F46494E535F4E6F746108000400000000001244657461
      6C68655F4573706563696669636F010049002000020007535542545950450200
      49000A00466978656443686172000557494454480200020001001149434D535F
      44656E74726F45737461646F08000400000000000F49434D535F466F72614573
      7461646F08000400000000000D5049535F4E6F74615361696461080004000000
      000010434F46494E535F4E6F7461536169646108000400000000000543414D45
      5802000300000000000C546162656C615F43414D455802000300000000000E50
      6F74656E6369615F4D6F746F7201004900000001000557494454480200020004
      000B43696C696E64726164617301004900000001000557494454480200020004
      00105469706F5F436F6D627573746976656C0100490000000100055749445448
      02000200020011436170616369646164655F54726163616F0800040000000000
      0F44697374616E6369615F4569786F7301004900000001000557494454480200
      020004000C5469706F5F50696E74757261010049000000010005574944544802
      00020001000C5469706F5F56656963756C6F0100490000000100055749445448
      0200020002000F457370656369655F56656963756C6F01004900000001000557
      494454480200020001000C436F6E646963616F5F56494E010049000000010005
      574944544802000200010010436F6E646963616F5F56656963756C6F01004900
      000001000557494454480200020001000B5061737361676569726F7302000100
      0000000012436F6469676F5F4D617263614D6F64656C6F010049000000010005
      57494454480200020006000C56616C6F725F56656E6461410800040000000100
      07535542545950450200490006004D6F6E6579000C56616C6F725F56656E6461
      42080004000000010007535542545950450200490006004D6F6E6579000C5661
      6C6F725F56656E64614308000400000001000753554254595045020049000600
      4D6F6E6579000C56616C6F725F56656E64614408000400000001000753554254
      5950450200490006004D6F6E6579000C56616C6F725F56656E64614508000400
      0000010007535542545950450200490006004D6F6E6579000A4D6F64616C6964
      6164650200010000000000034643500200030000000000104C6F74655F4F6272
      696761746F72696F02000300000000001150726F647563616F5F4E6163696F6E
      616C02000300000000000F526567697374726F5F414E56495341010049000000
      0100055749445448020002000C001156656E63696D656E746F5F414E56495341
      08000800000000000F50726F636573736F5F414E564953410100490000000100
      0557494454480200020014001253657269616C5F4F6272696761746F72696F02
      000300000000001556616C6F725F436F6E73756D69646F7246696E616C080004
      000000010007535542545950450200490006004D6F6E657900064F726967656D
      01004900200002000753554254595045020049000A0046697865644368617200
      05574944544802000200010010457363616C615F52656C6576616E7465020003
      00000000000F434E504A5F466162726963616E74650100490000000100055749
      445448020002000E000D44657363726963616F5F414E50010049000000010005
      57494454480200020064000E50657263656E7475616C5F474C50080004000000
      00001050657263656E7475616C5F474C474E4E08000400000000001050657263
      656E7475616C5F474C474E4908000400000000000D56616C6F725F5061727469
      6461080004000000010007535542545950450200490006004D6F6E6579001350
      7265636F5F4D6178436F6E73756D69646F720800040000000100075355425459
      50450200490006004D6F6E6579000856616C6F725F4D45080004000000010007
      535542545950450200490006004D6F6E6579001042656E65666963696F5F4669
      7363616C01004900000001000557494454480200020008001849434D535F4465
      6E74726F45737461646F53696D706C657308000400000000000D4D6174657269
      615F5072696D6102000300000000001249434D535F45737461646F456E747261
      646108000400000000001649434D535F466F726145737461646F456E74726164
      610800040000000000075365727669636F02000300000000000D436C61737369
      6669636163616F0100490000000100055749445448020002000F000952657175
      65725F4C49020003000000000007436C69656E74650200010000000000104F72
      67616F5F416E75656E7465496D700200010000000000104F7267616F5F416E75
      656E746545787002000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 351
    Top = 214
    object tPlanCliCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tPlanCliCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
    end
    object tPlanCliTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object tPlanCliUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object tPlanCliQuantidade_Unidade: TFloatField
      FieldName = 'Quantidade_Unidade'
    end
    object tPlanCliNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object tPlanCliPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object tPlanCliPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
    end
    object tPlanCliDescricao_Reduzida: TStringField
      FieldName = 'Descricao_Reduzida'
      Size = 60
    end
    object tPlanCliDescricao: TStringField
      FieldName = 'Descricao'
      Size = 5000
    end
    object tPlanCliDescricao_Ingles: TStringField
      FieldName = 'Descricao_Ingles'
      Size = 5000
    end
    object tPlanCliAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
    end
    object tPlanCliAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
    end
    object tPlanCliAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
    end
    object tPlanCliAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
    end
    object tPlanCliTipo_Item: TSmallintField
      FieldName = 'Tipo_Item'
    end
    object tPlanCliValor_IPI: TFloatField
      FieldName = 'Valor_IPI'
    end
    object tPlanCliClasseEnquadra_IPI: TStringField
      FieldName = 'ClasseEnquadra_IPI'
      FixedChar = True
      Size = 1
    end
    object tPlanCliDumping_Valor: TFloatField
      FieldName = 'Dumping_Valor'
    end
    object tPlanCliFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object tPlanCliFornecedor_Nome: TStringField
      FieldName = 'Fornecedor_Nome'
      Size = 60
    end
    object tPlanCliFabricante: TIntegerField
      FieldName = 'Fabricante'
    end
    object tPlanCliValor_Venda: TCurrencyField
      FieldName = 'Valor_Venda'
    end
    object tPlanCliValor_CustoMedio: TCurrencyField
      FieldName = 'Valor_CustoMedio'
    end
    object tPlanCliValor_Entrada: TCurrencyField
      FieldName = 'Valor_Entrada'
    end
    object tPlanCliTipo_Conversao: TStringField
      FieldName = 'Tipo_Conversao'
      FixedChar = True
      Size = 1
    end
    object tPlanCliReducao_COFINS: TFloatField
      FieldName = 'Reducao_COFINS'
    end
    object tPlanCliReducao_PIS: TFloatField
      FieldName = 'Reducao_PIS'
    end
    object tPlanCliLinha: TSmallintField
      FieldName = 'Linha'
    end
    object tPlanCliGTIN: TStringField
      FieldName = 'GTIN'
      Size = 14
    end
    object tPlanCliUnidade_Origem: TStringField
      FieldName = 'Unidade_Origem'
      Size = 3
    end
    object tPlanCliGTIN_Unidade: TStringField
      FieldName = 'GTIN_Unidade'
      Size = 14
    end
    object tPlanCliLargura: TFloatField
      FieldName = 'Largura'
    end
    object tPlanCliComprimento: TFloatField
      FieldName = 'Comprimento'
    end
    object tPlanCliAltura: TFloatField
      FieldName = 'Altura'
    end
    object tPlanCliICMS_Reducao: TFloatField
      FieldName = 'ICMS_Reducao'
    end
    object tPlanCliQuantidade_Volumes: TFloatField
      FieldName = 'Quantidade_Volumes'
    end
    object tPlanCliSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object tPlanCliDumping: TBooleanField
      FieldName = 'Dumping'
    end
    object tPlanCliReciclavel: TBooleanField
      FieldName = 'Reciclavel'
    end
    object tPlanCliCodigo_ANP: TStringField
      FieldName = 'Codigo_ANP'
    end
    object tPlanCliCodigo_Provisorio: TIntegerField
      FieldName = 'Codigo_Provisorio'
    end
    object tPlanCliReducao_IPI: TFloatField
      FieldName = 'Reducao_IPI'
    end
    object tPlanCliReducao_II: TFloatField
      FieldName = 'Reducao_II'
    end
    object tPlanCliAcordo_TarifarioII: TFloatField
      FieldName = 'Acordo_TarifarioII'
    end
    object tPlanCliAcordo_TarifarioIPI: TFloatField
      FieldName = 'Acordo_TarifarioIPI'
    end
    object tPlanCliEntrada_ST: TBooleanField
      FieldName = 'Entrada_ST'
    end
    object tPlanCliDesativado: TBooleanField
      FieldName = 'Desativado'
    end
    object tPlanCliCusto_Seletivo: TBooleanField
      FieldName = 'Custo_Seletivo'
    end
    object tPlanCliPIS_Nota: TFloatField
      FieldName = 'PIS_Nota'
    end
    object tPlanCliCOFINS_Nota: TFloatField
      FieldName = 'COFINS_Nota'
    end
    object tPlanCliDetalhe_Especifico: TStringField
      FieldName = 'Detalhe_Especifico'
      FixedChar = True
      Size = 1
    end
    object tPlanCliICMS_DentroEstado: TFloatField
      FieldName = 'ICMS_DentroEstado'
    end
    object tPlanCliICMS_ForaEstado: TFloatField
      FieldName = 'ICMS_ForaEstado'
    end
    object tPlanCliPIS_NotaSaida: TFloatField
      FieldName = 'PIS_NotaSaida'
    end
    object tPlanCliCOFINS_NotaSaida: TFloatField
      FieldName = 'COFINS_NotaSaida'
    end
    object tPlanCliCAMEX: TBooleanField
      FieldName = 'CAMEX'
    end
    object tPlanCliTabela_CAMEX: TBooleanField
      FieldName = 'Tabela_CAMEX'
    end
    object tPlanCliPotencia_Motor: TStringField
      FieldName = 'Potencia_Motor'
      Size = 4
    end
    object tPlanCliCilindradas: TStringField
      FieldName = 'Cilindradas'
      Size = 4
    end
    object tPlanCliTipo_Combustivel: TStringField
      FieldName = 'Tipo_Combustivel'
      Size = 2
    end
    object tPlanCliCapacidade_Tracao: TFloatField
      FieldName = 'Capacidade_Tracao'
    end
    object tPlanCliDistancia_Eixos: TStringField
      FieldName = 'Distancia_Eixos'
      Size = 4
    end
    object tPlanCliTipo_Pintura: TStringField
      FieldName = 'Tipo_Pintura'
      Size = 1
    end
    object tPlanCliTipo_Veiculo: TStringField
      FieldName = 'Tipo_Veiculo'
      Size = 2
    end
    object tPlanCliEspecie_Veiculo: TStringField
      FieldName = 'Especie_Veiculo'
      Size = 1
    end
    object tPlanCliCondicao_VIN: TStringField
      FieldName = 'Condicao_VIN'
      Size = 1
    end
    object tPlanCliCondicao_Veiculo: TStringField
      FieldName = 'Condicao_Veiculo'
      Size = 1
    end
    object tPlanCliPassageiros: TSmallintField
      FieldName = 'Passageiros'
    end
    object tPlanCliCodigo_MarcaModelo: TStringField
      FieldName = 'Codigo_MarcaModelo'
      Size = 6
    end
    object tPlanCliValor_VendaA: TCurrencyField
      FieldName = 'Valor_VendaA'
    end
    object tPlanCliValor_VendaB: TCurrencyField
      FieldName = 'Valor_VendaB'
    end
    object tPlanCliValor_VendaC: TCurrencyField
      FieldName = 'Valor_VendaC'
    end
    object tPlanCliValor_VendaD: TCurrencyField
      FieldName = 'Valor_VendaD'
    end
    object tPlanCliValor_VendaE: TCurrencyField
      FieldName = 'Valor_VendaE'
    end
    object tPlanCliModalidade: TSmallintField
      FieldName = 'Modalidade'
    end
    object tPlanCliFCP: TBooleanField
      FieldName = 'FCP'
    end
    object tPlanCliLote_Obrigatorio: TBooleanField
      FieldName = 'Lote_Obrigatorio'
    end
    object tPlanCliProducao_Nacional: TBooleanField
      FieldName = 'Producao_Nacional'
    end
    object tPlanCliRegistro_ANVISA: TStringField
      FieldName = 'Registro_ANVISA'
      Size = 12
    end
    object tPlanCliVencimento_ANVISA: TDateTimeField
      FieldName = 'Vencimento_ANVISA'
    end
    object tPlanCliProcesso_ANVISA: TStringField
      FieldName = 'Processo_ANVISA'
    end
    object tPlanCliSerial_Obrigatorio: TBooleanField
      FieldName = 'Serial_Obrigatorio'
    end
    object tPlanCliValor_ConsumidorFinal: TCurrencyField
      FieldName = 'Valor_ConsumidorFinal'
    end
    object tPlanCliOrigem: TStringField
      FieldName = 'Origem'
      FixedChar = True
      Size = 1
    end
    object tPlanCliEscala_Relevante: TBooleanField
      FieldName = 'Escala_Relevante'
    end
    object tPlanCliCNPJ_Fabricante: TStringField
      FieldName = 'CNPJ_Fabricante'
      Size = 14
    end
    object tPlanCliDescricao_ANP: TStringField
      FieldName = 'Descricao_ANP'
      Size = 100
    end
    object tPlanCliPercentual_GLP: TFloatField
      FieldName = 'Percentual_GLP'
    end
    object tPlanCliPercentual_GLGNN: TFloatField
      FieldName = 'Percentual_GLGNN'
    end
    object tPlanCliPercentual_GLGNI: TFloatField
      FieldName = 'Percentual_GLGNI'
    end
    object tPlanCliValor_Partida: TCurrencyField
      FieldName = 'Valor_Partida'
    end
    object tPlanCliPreco_MaxConsumidor: TCurrencyField
      FieldName = 'Preco_MaxConsumidor'
    end
    object tPlanCliValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
    end
    object tPlanCliBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Size = 8
    end
    object tPlanCliICMS_DentroEstadoSimples: TFloatField
      FieldName = 'ICMS_DentroEstadoSimples'
    end
    object tPlanCliMateria_Prima: TBooleanField
      FieldName = 'Materia_Prima'
    end
    object tPlanCliICMS_EstadoEntrada: TFloatField
      FieldName = 'ICMS_EstadoEntrada'
    end
    object tPlanCliICMS_ForaEstadoEntrada: TFloatField
      FieldName = 'ICMS_ForaEstadoEntrada'
    end
    object tPlanCliServico: TBooleanField
      FieldName = 'Servico'
    end
    object tPlanCliClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object tPlanCliRequer_LI: TBooleanField
      FieldName = 'Requer_LI'
    end
    object tPlanCliCliente: TSmallintField
      FieldName = 'Cliente'
    end
    object tPlanCliOrgao_AnuenteImp: TSmallintField
      FieldName = 'Orgao_AnuenteImp'
    end
    object tPlanCliOrgao_AnuenteExp: TSmallintField
      FieldName = 'Orgao_AnuenteExp'
    end
  end
  object tProd: TFDQuery
    Left = 403
    Top = 214
  end
  object tReg: TFDQuery
    Left = 467
    Top = 214
  end
  object tCampos: TFDQuery
    Left = 523
    Top = 214
  end
  object LayImp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT *'
      'FROM   LayoutImportacao')
    Left = 732
    Top = 214
  end
  object dsLayInp: TDataSource
    DataSet = LayImp
    Left = 731
    Top = 265
  end
  object tCodigo: TFDQuery
    Left = 470
    Top = 265
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 677
    Top = 265
  end
  object vConv: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = RResponse
    Left = 515
    Top = 156
  end
  object tNCM: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Texto'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'UM'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ICMS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IPI'
        DataType = ftFloat
      end
      item
        Name = 'II'
        DataType = ftFloat
      end
      item
        Name = 'PIS'
        DataType = ftFloat
      end
      item
        Name = 'COFINS'
        DataType = ftFloat
      end
      item
        Name = 'CIDE'
        DataType = ftFloat
      end
      item
        Name = 'CEST'
        DataType = ftBoolean
      end
      item
        Name = 'EX'
        DataType = ftBoolean
      end
      item
        Name = 'NVE'
        DataType = ftBoolean
      end
      item
        Name = 'AntD'
        DataType = ftBoolean
      end
      item
        Name = 'LI'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 676
    Top = 214
    object tNCMNCM: TStringField
      DisplayWidth = 10
      FieldName = 'NCM'
      EditMask = '####.##.##;0; '
      Size = 8
    end
    object tNCMTexto: TStringField
      DisplayWidth = 65
      FieldName = 'Texto'
      Size = 250
    end
    object tNCMUM: TStringField
      DisplayWidth = 5
      FieldName = 'UM'
      Size = 5
    end
    object tNCMICMS: TStringField
      DisplayWidth = 15
      FieldName = 'ICMS'
      Size = 15
    end
    object tNCMIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      DisplayFormat = ',##0.00'
    end
    object tNCMII: TFloatField
      DisplayWidth = 10
      FieldName = 'II'
      DisplayFormat = ',##0.00'
    end
    object tNCMPIS: TFloatField
      DisplayWidth = 10
      FieldName = 'PIS'
      DisplayFormat = ',##0.00'
    end
    object tNCMCOFINS: TFloatField
      DisplayWidth = 10
      FieldName = 'COFINS'
      DisplayFormat = ',##0.00'
    end
    object tNCMCIDE: TFloatField
      DisplayWidth = 10
      FieldName = 'CIDE'
    end
    object tNCMCEST: TBooleanField
      DisplayWidth = 5
      FieldName = 'CEST'
      DisplayValues = 'a'
    end
    object tNCMEX: TBooleanField
      DisplayWidth = 5
      FieldName = 'EX'
      DisplayValues = 'a'
    end
    object tNCMNVE: TBooleanField
      DisplayWidth = 5
      FieldName = 'NVE'
      DisplayValues = 'a'
    end
    object tNCMAntD: TBooleanField
      DisplayWidth = 5
      FieldName = 'AntD'
      DisplayValues = 'a'
    end
    object tNCMLI: TBooleanField
      FieldName = 'LI'
      DisplayValues = 'a'
    end
  end
  object RClient: TRESTClient
    Authenticator = RAutentica
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://www.ncmweb.com.br/api/ncmweb/v1/subitens/8523.41.10?aliq' +
      'uotas=true&indicadores=true'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 276
    Top = 155
  end
  object RRequest: TRESTRequest
    Client = RClient
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Authorization'
        Options = [poDoNotEncode]
        Value = 
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjA0NDgzMGIxN' +
          'ThlNDg5ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkYjA3N2NiO' +
          'TA4MGFlYmY4MjU1ZGM4OTgwZjI2YzhiIn0.eyJhdWQiOiI0NiIsImp0aSI6IjA0N' +
          'DgzMGIxNThlNDg5ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkY' +
          'jA3N2NiOTA4MGFlYmY4MjU1ZGM4OTgwZjI2YzhiIiwiaWF0IjoxNjU1Mjk4MDUwL' +
          'CJuYmYiOjE2NTUyOTgwNTAsImV4cCI6MTY4NjgzNDA1MCwic3ViIjoiODQ2NCIsI' +
          'nNjb3BlcyI6W119.iKr8i5f_70zk6tMQ2EPTfwYcPN8jnHY5jldq4LyvHTF0aHGq' +
          'RHBZW9btJeoBABmR4UWnDh7AzWQrhnTjPd8NymkKKXjlI5SXoH14uxhmjNbokqe4' +
          'u_4rUFa2Ug6FbvzlMlF1F5gNxkljZmpdzQRlE6M8onOOJX-X-fhYc9e0tP-xVlgL' +
          'dgFSovQE-WfVfFRlPMGe0o7X-PYbzUbhtq4BO8P0RfFuCl0EE5zNmSoqTNs0hpi8' +
          '28y_VAS-ZPPw2BqR32u8n2ce_DbiBRw-pjCmXiBr-dPZCO5CYk04CIHgK_x2iUlb' +
          'WAZzlMnMz1B8GY7pkxihhdCwB0a9jr9YWjWGh9F2451OGXqYkmCXw5M19yGIN_ps' +
          'Z9JlGcIlQ3UheVvGCG38MaffZPL_Oe7U2xGgEuljE3Vw6a3CkQZA2coTpzmfNKpk' +
          'suw8AaBtNtesul7LSpvsy_j8mdHDNX9ps6e1h8ZKVqmLkJVF08kbtRhyryfpludM' +
          'jpuY19Zu_fqZVCfB90xGFTR9xoq08j5OehXXvTCZUEXEwrJc06EJjea4goMu3acL' +
          '-5D1pyNFdyy3RmYGM0aqbS2SNgf6kJKDjvliToP5080Ne_IfnvpgRN5YzsTIkR81' +
          'UKBu4m8hPloc2gLSNYbRqLk7w4dVw6bnKcUPtb4JwMlTdZwmXtd5dLQqfLQ'
      end>
    Response = RResponse
    SynchronizedEvents = False
    Left = 326
    Top = 155
  end
  object RResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 388
    Top = 155
  end
  object RAutentica: TOAuth2Authenticator
    AccessToken = 
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjA0NDgzMGIxNThlNDg5' +
      'ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkYjA3N2NiOTA4MGFl' +
      'YmY4MjU1ZGM4OTgwZjI2YzhiIn0.eyJhdWQiOiI0NiIsImp0aSI6IjA0NDgzMGIx' +
      'NThlNDg5ZWUwY2NhYjM1MzMxYzcwMTkzYTQyZjk4NGJmZGIxZDE4NzJkYjA3N2Ni' +
      'OTA4MGFlYmY4MjU1ZGM4OTgwZjI2YzhiIiwiaWF0IjoxNjU1Mjk4MDUwLCJuYmYi' +
      'OjE2NTUyOTgwNTAsImV4cCI6MTY4NjgzNDA1MCwic3ViIjoiODQ2NCIsInNjb3Bl' +
      'cyI6W119.iKr8i5f_70zk6tMQ2EPTfwYcPN8jnHY5jldq4LyvHTF0aHGqRHBZW9b' +
      'tJeoBABmR4UWnDh7AzWQrhnTjPd8NymkKKXjlI5SXoH14uxhmjNbokqe4u_4rUFa' +
      '2Ug6FbvzlMlF1F5gNxkljZmpdzQRlE6M8onOOJX-X-fhYc9e0tP-xVlgLdgFSovQ' +
      'E-WfVfFRlPMGe0o7X-PYbzUbhtq4BO8P0RfFuCl0EE5zNmSoqTNs0hpi828y_VAS' +
      '-ZPPw2BqR32u8n2ce_DbiBRw-pjCmXiBr-dPZCO5CYk04CIHgK_x2iUlbWAZzlMn' +
      'Mz1B8GY7pkxihhdCwB0a9jr9YWjWGh9F2451OGXqYkmCXw5M19yGIN_psZ9JlGcI' +
      'lQ3UheVvGCG38MaffZPL_Oe7U2xGgEuljE3Vw6a3CkQZA2coTpzmfNKpksuw8AaB' +
      'tNtesul7LSpvsy_j8mdHDNX9ps6e1h8ZKVqmLkJVF08kbtRhyryfpludMjpuY19Z' +
      'u_fqZVCfB90xGFTR9xoq08j5OehXXvTCZUEXEwrJc06EJjea4goMu3acL-5D1pyN' +
      'Fdyy3RmYGM0aqbS2SNgf6kJKDjvliToP5080Ne_IfnvpgRN5YzsTIkR81UKBu4m8' +
      'hPloc2gLSNYbRqLk7w4dVw6bnKcUPtb4JwMlTdZwmXtd5dLQqfLQ'
    Left = 450
    Top = 154
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 602
    Top = 153
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Produtos')
    Left = 50
    Top = 50
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 50
    Top = 100
  end
  object POItens: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM POItens')
    Left = 50
    Top = 148
  end
  object dsPOItens: TDataSource
    DataSet = POItens
    Left = 50
    Top = 200
  end
  object NCM: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NCM')
    Left = 50
    Top = 250
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 50
    Top = 300
  end
  object LayoutImportacao: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM LayoutImportacao')
    Left = 214
    Top = 325
  end
  object dsLayoutImportacao: TDataSource
    DataSet = LayoutImportacao
    Left = 214
    Top = 375
  end
  object EComm: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ECommerce'
      
        '  (Registro, Ativo, Tempo_Verificacao, URL, Consumer_Key, consum' +
        'er_Secret, Token, Servico)'
      'VALUES'
      
        '  (:Registro, :Ativo, :Tempo_Verificacao, :URL, :Consumer_Key, :' +
        'consumer_Secret, :Token, :Servico)')
    SQLDelete.Strings = (
      'DELETE FROM ECommerce'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ECommerce'
      'SET'
      
        '  Registro = :Registro, Ativo = :Ativo, Tempo_Verificacao = :Tem' +
        'po_Verificacao, URL = :URL, Consumer_Key = :Consumer_Key, consum' +
        'er_Secret = :consumer_Secret, Token = :Token, Servico = :Servico'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT Registro, Ativo, Tempo_Verificacao, URL, Consumer_Key, co' +
        'nsumer_Secret, Token, Servico FROM ECommerce'
      'WHERE'
      '  Registro = :Registro')
    SQLLock.Strings = (
      'SELECT * FROM ECommerce'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM ECommerce'
      ')')
    SQL.Strings = (
      'SELECT * FROM ECommerce')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 215
    Top = 224
    object ECommRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object ECommAtivo: TBooleanField
      FieldName = 'Ativo'
    end
    object ECommTempo_Verificacao: TSmallintField
      FieldName = 'Tempo_Verificacao'
    end
    object ECommURL: TStringField
      FieldName = 'URL'
      Size = 160
    end
    object ECommConsumer_Key: TStringField
      FieldName = 'Consumer_Key'
      Size = 60
    end
    object ECommconsumer_Secret: TStringField
      FieldName = 'consumer_Secret'
      Size = 60
    end
    object ECommToken: TMemoField
      FieldName = 'Token'
      BlobType = ftMemo
    end
  end
  object dsEComm: TDataSource
    DataSet = EComm
    Left = 213
    Top = 272
  end
  object UniScreenMask1: TUniScreenMask
    AttachedControl = bArqProd
    Enabled = True
    DisplayMessage = 'Abrindo planilha...Aguarde'
    TargetControl = Pasta
    Left = 699
    Top = 66
  end
  object UniFileUpload1: TUniFileUpload
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
    OnCompleted = UniFileUpload1Completed
    Left = 887
    Top = 81
  end
end
