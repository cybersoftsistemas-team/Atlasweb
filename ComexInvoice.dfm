object fComexInvoice: TfComexInvoice
  Left = 0
  Top = 0
  Width = 1243
  Height = 1014
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  Anchors = [akTop]
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1243
    Height = 979
    Hint = ''
    Margins.Bottom = 15
    ActivePage = AbaInvoice
    Align = alClient
    TabOrder = 0
    object AbaLista: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Lista'
      object Grade: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 1229
        Height = 920
        Hint = ''
        Margins.Bottom = 1
        ShowHint = True
        ParentShowHint = False
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        DataSource = dsInvoice
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgCancelOnExit]
        ReadOnly = True
        WebOptions.PageSize = 35
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        Columns = <
          item
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Title.Font.Style = [fsBold]
            Width = 174
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Title.Font.Style = [fsBold]
            Width = 150
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Modalidade_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade'
            Title.Font.Style = [fsBold]
            Width = 120
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Cliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Style = [fsBold]
            Width = 230
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Pais_OrigemNome'
            Title.Alignment = taCenter
            Title.Caption = 'Pais de Origem'
            Title.Font.Style = [fsBold]
            Width = 187
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Exportador_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Exportador'
            Title.Font.Style = [fsBold]
            Width = 230
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Total_FaturaME'
            Title.Alignment = taCenter
            Title.Caption = 'Valor (ME)'
            Title.Font.Style = [fsBold]
            Width = 145
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1235
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'BarraPesquisa'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clNone
        object cPesquisa: TUniEdit
          Left = 0
          Top = 0
          Width = 491
          Height = 27
          Hint = ''
          Margins.Bottom = 1
          CharCase = ecUpperCase
          BorderStyle = ubsInset
          Text = ''
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Align = alLeft
          TabOrder = 1
          ClearButton = True
          OnKeyDown = cPesquisaKeyDown
        end
        object bPesquisa: TUniSpeedButton
          Left = 491
          Top = 0
          Width = 25
          Height = 27
          Hint = ''
          Caption = ''
          Align = alLeft
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 10
          TabOrder = 2
          OnClick = bPesquisaClick
        end
      end
    end
    object AbaInvoice: TUniTabSheet
      Hint = ''
      Caption = 'Dados da Invoice'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1235
        Height = 951
        Hint = ''
        Align = alClient
        TabOrder = 0
        DesignSize = (
          1233
          949)
        ScrollHeight = 920
        ScrollWidth = 616
        object pFicha: TUniPanel
          Left = 109
          Top = 18
          Width = 785
          Height = 847
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          ScreenMask.Color = clBlack
          ScreenMask.Opacity = 1.000000000000000000
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          ParentAlignmentControl = False
          object cData: TUniDBDateTimePicker
            Left = 419
            Top = 98
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data'
            DataSource = dsInvoice
            DateTime = 46162.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Data'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
          end
          object cMoeda: TUniDBLookupComboBox
            Left = 15
            Top = 179
            Width = 754
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Simbolo'
            ListSource = dsMoedas
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Moeda'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Moeda'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
          end
          object cPaisOrigem: TUniDBLookupComboBox
            Left = 15
            Top = 233
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsPaises
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Pais_Origem'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Pais Origem'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cNumero: TUniDBEdit
            Left = 15
            Top = 98
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Invoice N'#186
            FieldLabelWidth = 120
            BorderStyle = ubsInset
            OnChange = cNumeroChange
          end
          object cExportador: TUniDBLookupComboBox
            Left = 15
            Top = 206
            Width = 754
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsFornecedores
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Exportador'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'Exportador'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cExportadorExit
          end
          object DBEdit1: TUniDBEdit
            Left = 15
            Top = 341
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Local_Embarque'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 19
            FieldLabel = 'Local Embarque'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBMemo1: TUniDBMemo
            Left = 15
            Top = 368
            Width = 754
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Dados_Bancarios'
            DataSource = dsInvoice
            BorderStyle = ubsInset
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 21
            FieldLabel = 'Dados Bancarios'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object DBMemo2: TUniDBMemo
            Left = 15
            Top = 395
            Width = 754
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Notificar'
            DataSource = dsInvoice
            BorderStyle = ubsInset
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 22
            FieldLabel = 'Notificar'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object DBEdit2: TUniDBEdit
            Left = 419
            Top = 341
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Local_Chegada'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 20
            FieldLabel = 'Local Chegada'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit4: TUniDBEdit
            Left = 15
            Top = 479
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Liquido'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 25
            FieldLabel = 'Peso L'#237'quido'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit5: TUniDBEdit
            Left = 419
            Top = 479
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Bruto'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 26
            FieldLabel = 'Peso Bruto'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cVolumes: TUniDBEdit
            Left = 15
            Top = 452
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Volumes_Quantidade'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 23
            FieldLabel = 'Qtde. Volumes'
            FieldLabelWidth = 120
            BorderStyle = ubsInset
          end
          object DBEdit7: TUniDBEdit
            Left = 419
            Top = 452
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Metro_Cubico'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 24
            FieldLabel = 'Metros C'#250'bicos'
            FieldLabelWidth = 120
            BorderStyle = ubsInset
          end
          object DBEdit3: TUniDBEdit
            Left = 419
            Top = 506
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Total_Fatura'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 28
            FieldLabel = 'Total Fatura (R$)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit6: TUniDBEdit
            Left = 15
            Top = 506
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Total_FaturaME'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 27
            FieldLabel = 'Total da Fatura (ME)'
            FieldLabelWidth = 120
            BorderStyle = ubsInset
          end
          object cCondicaoCambio: TUniDBLookupComboBox
            Left = 15
            Top = 260
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Condicao_Cambio'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'Condi'#231#227'o Cambial'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnChange = cCondicaoCambioChange
          end
          object cData_BL: TUniDBDateTimePicker
            Left = 419
            Top = 152
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_BL'
            DataSource = dsInvoice
            DateTime = 46162.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 9
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'BL N'#186
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
            OnChange = cData_BLChange
          end
          object DBDateEdit2: TUniDBDateTimePicker
            Left = 419
            Top = 287
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Data_Vencimento'
            DataSource = dsInvoice
            DateTime = 46162.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 16
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Vencimento'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
          end
          object cProcesso: TUniDBLookupComboBox
            Left = 15
            Top = 44
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Processo'
            ListSource = dsProcessos
            KeyField = 'Processo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Processo'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Processo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cTaxaCambio: TUniDBEdit
            Left = 15
            Top = 287
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Taxa_Cambio'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 15
            FieldLabel = 'Tqaxa C'#226'mbio'
            FieldLabelWidth = 120
            BorderStyle = ubsInset
          end
          object cBL: TUniDBEdit
            Left = 15
            Top = 152
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'BL'
            DataSource = dsInvoice
            CharCase = ecUpperCase
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 8
            FieldLabel = 'BL N'#186
            FieldLabelWidth = 120
            BorderStyle = ubsInset
          end
          object cPO: TUniDBLookupComboBox
            Left = 419
            Top = 44
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Numero'
            ListSource = dsPO
            KeyField = 'Numero'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'PO'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'PO N'#186
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object RxDBLookupCombo1: TUniDBLookupComboBox
            Left = 15
            Top = 614
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'INCOTERMS'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 34
            Color = clWindow
            FieldLabel = 'INCOTERM'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object DBEdit10: TUniDBEdit
            Left = 419
            Top = 614
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Local_Condicao'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 35
            FieldLabel = 'Local Condi'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object RxDBLookupCombo2: TUniDBLookupComboBox
            Left = 15
            Top = 641
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Metodo_Valoracao'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 36
            Color = clWindow
            FieldLabel = 'Metodo Valora'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cCoberturaCambial: TUniDBComboBox
            Left = 419
            Top = 641
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Cobertura_Cambial'
            DataSource = dsInvoice
            Items.Strings = (
              'ATE 180 DIAS'
              'DE 181 A 360 DIAS'
              'ACIMA DE 360 DIAS'
              'SEM COBERTURA')
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 37
            FieldLabel = 'Cobertura Cambial'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            IconItems = <>
            OnChange = cCoberturaCambialChange
          end
          object RxDBLookupCombo3: TUniDBLookupComboBox
            Left = 15
            Top = 695
            Width = 754
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsAgFinanc
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Financiadora'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 39
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Financiadora'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cMotivoCambial: TUniDBLookupComboBox
            Left = 15
            Top = 668
            Width = 754
            Height = 25
            Hint = ''
            Enabled = False
            ShowHint = True
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Motivo_SemCobertura'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 38
            Color = clWindow
            FieldLabel = 'Motivo sem Cobertura'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object DBLookupComboBox1: TUniDBLookupComboBox
            Left = 15
            Top = 533
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Simbolo'
            ListSource = dsMoedas
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Moeda_Frete'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 29
            Color = clWindow
            MatchFieldWidth = False
            FieldLabel = 'Moeda Frete'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
          end
          object DBEdit11: TUniDBEdit
            Left = 419
            Top = 533
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Frete_PrePaid'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 30
            FieldLabel = 'Frete PrePaid'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBLookupComboBox2: TUniDBLookupComboBox
            Left = 15
            Top = 587
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Simbolo'
            ListSource = dsMoedas
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Moeda_Seguro'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 32
            Color = clWindow
            FieldLabel = 'Moeda Seguro'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
          end
          object DBEdit12: TUniDBEdit
            Left = 419
            Top = 587
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Seguro'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 33
            FieldLabel = 'Valor Seguro'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBLookupComboBox3: TUniDBLookupComboBox
            Left = 419
            Top = 233
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsPaises
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Pais Aquisi'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object DBLookupComboBox4: TUniDBLookupComboBox
            Left = 15
            Top = 314
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsViaTransporte
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'Via_Transporte'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 17
            Color = clWindow
            FieldLabel = 'Via Transporte'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            OnExit = cMoedaClick
          end
          object DBComboBox2: TUniDBComboBox
            Left = 419
            Top = 125
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataSource = dsInvoice
            Items.Strings = (
              'NOVA'
              'USADA')
            ParentFont = False
            Font.Color = clNone
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Condi'#231#227'o Mercadoria'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object DBEdit13: TUniDBEdit
            Left = 15
            Top = 560
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 31
            FieldLabel = 'Frete Collect'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit9: TUniDBEdit
            Left = 419
            Top = 314
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Destino'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 18
            FieldLabel = 'Destino'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cAplicacao: TUniDBComboBox
            Left = 15
            Top = 125
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Aplicacao'
            DataSource = dsInvoice
            Items.Strings = (
              'Consumo'
              'Incorporacao ativo fixo'
              'Industrializa'#231#227'o'
              'Revenda'
              'Outra')
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Finalidade Mercadoria'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object DBEdit8: TUniDBEdit
            Left = 15
            Top = 722
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Numero_ROF'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 40
            FieldLabel = 'ROF (SCE-Cr'#233'dito)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit14: TUniDBEdit
            Left = 420
            Top = 722
            Width = 350
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_CoberturaCambial'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 41
            FieldLabel = 'Valor Cobertura Cambial'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object GroupBox1: TUniGroupBox
            AlignWithMargins = True
            Left = 11
            Top = 768
            Width = 755
            Height = 60
            Hint = ''
            Enabled = False
            ShowHint = True
            Caption = 'Totais do Processo'
            TabOrder = 42
            object cTotalFaturaME: TUniFormattedNumberEdit
              Left = 380
              Top = 21
              Width = 180
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
              Color = 16762566
              FieldLabel = 'Valor (ME)'
              FieldLabelWidth = 80
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalPesoLiquido: TUniFormattedNumberEdit
              Left = 9
              Top = 21
              Width = 180
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 4
              Color = 16762566
              FieldLabel = 'Peso L'#237'quido'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalPesoBruto: TUniFormattedNumberEdit
              Left = 195
              Top = 21
              Width = 180
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 1
              Color = 16762566
              FieldLabel = 'Peso Bruto'
              FieldLabelWidth = 80
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object cTotalFaturaReal: TUniFormattedNumberEdit
              Left = 566
              Top = 21
              Width = 180
              Height = 25
              Hint = ''
              ShowHint = True
              BorderStyle = ubsInset
              Alignment = taRightJustify
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 3
              Color = 16762566
              FieldLabel = 'Valor (R$)'
              FieldLabelWidth = 80
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object cEmpresa: TUniDBLookupComboBox
            Left = 15
            Top = 17
            Width = 754
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'CNPJ;Razao_Social'
            ListSource = dsEmpresas
            KeyField = 'CNPJ'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Empresa'
            DataSource = dsInvoice
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            TabOrder = 0
            Color = clWindow
            FieldLabel = 'Empresa'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 15
            Top = 71
            Width = 400
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsModalidades
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Modalidade'
            DataSource = dsInvoice
            TabOrder = 43
            Color = clWindow
            FieldLabel = 'Modalidade'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 360
          Top = 901
          Width = 256
          Height = 19
          Hint = ''
          ParentColor = False
          TabOrder = 1
        end
      end
    end
    object Abaitens: TUniTabSheet
      Hint = ''
      ImageIndex = 2
      Caption = 'Itens da Invoice'
      DesignSize = (
        1235
        951)
      object Fichaitens: TUniPanel
        Left = 44
        Top = 18
        Width = 912
        Height = 594
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Ficha'#39';'#13#10'}')
        ScreenMask.Color = clBlack
        ScreenMask.Opacity = 1.000000000000000000
        BorderStyle = ubsSolid
        TitleAlign = taCenter
        Title = 'DADOS GERAIS'
        Caption = ''
        ParentAlignmentControl = False
        object UniContainerPanel2: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 912
          Height = 210
          Hint = ''
          ShowHint = True
          ParentColor = False
          Align = alTop
          TabOrder = 1
          object cQtde: TUniDBEdit
            Left = 11
            Top = 65
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Quantidade'
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Quantidade'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cValor_UnitarioME: TUniDBEdit
            Left = 11
            Top = 92
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_UnitarioME'
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Unit'#225'rio (ME)'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cProduto: TUniDBLookupComboBox
            Left = 11
            Top = 38
            Width = 888
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao_Reduzida'
            ListSource = dsProdutos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            ClearButton = True
            DataField = 'Codigo_Mercadoria'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Produto'
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cPeso_Liquido: TUniDBEdit
            Left = 11
            Top = 119
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Liquido'
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Peso L'#237'quido'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cPeso_Bruto: TUniDBEdit
            Left = 317
            Top = 119
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Peso_Bruto'
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Peso Bruto'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cIndicador: TUniDBRadioGroup
            Left = 642
            Top = 76
            Width = 248
            Height = 102
            Hint = ''
            ShowHint = True
            DataField = 'Vinculo_CompVend'
            Caption = 'Indicador Comprador/Vendedor - Vincul'#231#227'o'
            TabOrder = 9
            Items.Strings = (
              'N'#227'o h'#225
              'Sem influ'#234'ncia pre'#231'o'
              'Com influ'#234'ncia pre'#231'o')
            Values.Strings = (
              'NAO_HA_VINCULACAO'
              'VINCULACAO_SEM_INFLUENCIA_PRECO'
              'VINCULACAO_COM_INFLUENCIA_PRECO')
          end
          object cCertNum: TUniDBEdit
            Left = 11
            Top = 146
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Certificado_MercosulNumero'
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'N'#186' Certif.Mercosul'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
            OnExit = cCertNumExit
          end
          object cCertTipo: TUniDBComboBox
            Left = 317
            Top = 146
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Certificado_MercosulTipo'
            Items.Strings = (
              'CCPTC'
              'CCROM')
            ParentFont = False
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Tipo Cetif.Mercosul'
            FieldLabelSeparator = ' '
            IconItems = <>
          end
          object cCertQtde: TUniDBEdit
            Left = 11
            Top = 173
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Certificado_MercosulQtde'
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 8
            FieldLabel = 'Quantidade Certif.'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cInvoice: TUniDBEdit
            Left = 11
            Top = 11
            Width = 300
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Invoice'
            DataSource = dsInvoiceItens
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 10
            TabStop = False
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDestaque'#39';'#13#10'}')
            FieldLabel = 'Quantidade'
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
        end
        object UniPanel2: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 213
          Width = 906
          Height = 35
          Hint = ''
          ShowHint = True
          Align = alTop
          TabOrder = 2
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          Color = 7500402
          object UniDBNavigator1: TUniDBNavigator
            Left = 1
            Top = 1
            Width = 165
            Height = 33
            Cursor = crHandPoint
            Hint = ''
            Margins.Left = 1
            Margins.Right = 1
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            DataSource = dsInvoiceItens
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            ConfirmDelete = False
            IconSet = icsFontAwesome
            Align = alLeft
            TabOrder = 0
            BeforeAction = NavegaItensBeforeAction
          end
          object bAddItem: TUniSpeedButton
            Left = 166
            Top = 1
            Width = 41
            Height = 33
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
          object bAltItem: TUniSpeedButton
            Left = 207
            Top = 1
            Width = 41
            Height = 33
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
          object bExcItem: TUniSpeedButton
            Left = 248
            Top = 1
            Width = 41
            Height = 33
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
          object bCancItem: TUniSpeedButton
            Left = 330
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 3
            TabOrder = 5
          end
          object bSalvaItem: TUniSpeedButton
            Left = 289
            Top = 1
            Width = 41
            Height = 33
            Hint = 'Salva o registro corrente.'
            ShowHint = True
            Caption = ''
            Align = alLeft
            ParentColor = False
            IconAlign = iaCenter
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 6
          end
        end
        object GradeItens: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 254
          Width = 906
          Height = 220
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          DataSource = dsInvoiceItens
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          Align = alTop
          Font.Name = 'Calibri'
          ParentFont = False
          TabOrder = 3
          ParentColor = False
          Color = clBtnFace
          PreventWrap = True
          Columns = <
            item
              FieldName = 'Item'
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Font.Style = [fsBold]
              Width = 39
              Font.Name = 'Calibri'
              ForceStringFormat = True
              ReadOnly = True
              DisplayFormat = '0000;0'
            end
            item
              FieldName = 'Codigo_Mercadoria'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Style = [fsBold]
              Width = 83
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 594
              Font.Name = 'Calibri'
              ForceStringFormat = True
              ReadOnly = True
              Expanded = True
              MemoOptions.ConvertNewLineToBreak = True
              DisplayMemo = True
            end
            item
              FieldName = 'Valor_UnitarioME'
              Title.Alignment = taCenter
              Title.Caption = 'Unitario (ME)'
              Title.Font.Style = [fsBold]
              Width = 116
              Font.Name = 'Calibri'
              ReadOnly = True
            end>
        end
        object Grade3: TUniDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 480
          Width = 906
          Height = 111
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          DataSource = dstLPCO
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          WebOptions.Paged = False
          LoadMask.Message = 'Loading data...'
          ForceFit = True
          BorderStyle = ubsInset
          Align = alClient
          Font.Name = 'Calibri'
          ParentFont = False
          TabOrder = 4
          ParentColor = False
          Color = clBtnFace
          Columns = <
            item
              FieldName = 'Orgao_Anuente'
              Title.Alignment = taCenter
              Title.Caption = 'Org'#227'o Anuente'
              Title.Font.Style = [fsBold]
              Width = 417
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Documento'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Documento'
              Title.Font.Style = [fsBold]
              Width = 165
              Font.Name = 'Calibri'
              ReadOnly = True
            end
            item
              FieldName = 'Numero'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Title.Font.Style = [fsBold]
              Width = 216
              Font.Name = 'Calibri'
              ReadOnly = True
            end>
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1243
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 165
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsInvoice
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 165
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
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
      Left = 206
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
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
      Left = 247
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir reegistro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      Left = 329
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
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
      Left = 288
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bSalvarClick
    end
    object bFechar_: TUniSpeedButton
      Left = 570
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFechar_Click
    end
    object bItens: TUniButton
      Left = 370
      Top = 0
      Width = 130
      Height = 35
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Importar Itens do PO'
      Align = alLeft
      TabOrder = 8
    end
    object bLPCO: TUniButton
      Left = 500
      Top = 0
      Width = 70
      Height = 35
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'LPCO'
      Align = alLeft
      TabOrder = 9
      OnClick = bLPCOClick
    end
  end
  object ttmp: TFDQuery
    SQL.Strings = (
      'select isnull(sum(Total_Fatura), 0)   as Total_Real,'
      '       isnull(sum(Total_FaturaME), 0) as Total_ME,'
      '       isnull(sum(Peso_Liquido), 0)   as Total_PesoLiquido,'
      '       isnull(sum(Peso_Bruto), 0)     as Total_PesoBruto'
      'from Invoice'
      '')
    Left = 573
    Top = 214
  end
  object tLPCO: TFDQuery
    SQL.Strings = (
      'select Invoice'
      
        '      ,Orgao_Anuente = (select Nome from Cybersoft_Cadastros.dbo' +
        '.OrgaosAnuentes where Codigo = LPCO.Orgao_Anuente)'
      
        #9'  ,Documento = (select Documento from LPCO where LPCO.Registro ' +
        '= iil.LPCO)'
      
        #9'  ,Numero = (select NUmero from LPCO where LPCO.Registro = iil.' +
        'LPCO)'
      'from InvoiceItensLPCO iil, LPCO'
      'where iil.Invoice = '#39'HFT230928'#39
      'and Codigo_Mercadoria = 2'
      'and LPCO.Registro = iil.LPCO')
    Left = 462
    Top = 340
  end
  object dstLPCO: TDataSource
    DataSet = tLPCO
    Left = 462
    Top = 387
  end
  object Transportador: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      '')
    Left = 462
    Top = 248
  end
  object dstTransportador: TDataSource
    DataSet = Transportador
    Left = 462
    Top = 292
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 568
    Top = 155
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Empresas')
    Left = 157
    Top = 248
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 157
    Top = 292
  end
  object Fornecedores: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios where Fornecedor = 1')
    Left = 57
    Top = 248
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 57
    Top = 292
  end
  object Ramotividade: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Ramotividade')
    Left = 57
    Top = 340
  end
  object dsRamotividade: TDataSource
    DataSet = Ramotividade
    Left = 57
    Top = 387
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Paises')
    Left = 57
    Top = 437
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 57
    Top = 479
  end
  object Incoterms: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM INCOTERMS')
    Left = 57
    Top = 529
  end
  object dsIncoterms: TDataSource
    DataSet = Incoterms
    Left = 57
    Top = 579
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Moedas')
    Left = 157
    Top = 437
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 157
    Top = 479
  end
  object Invoice: TFDQuery
    CachedUpdates = True
    Connection = UniMainModule.Conecta
    FormatOptions.AssignedValues = [fvDataSnapCompatibility, fvFmtDisplayNumeric, fvFmtEditNumeric, fvCheckPrecision]
    FormatOptions.FmtDisplayNumeric = ',##0.00'
    FormatOptions.FmtEditNumeric = ',##0.00'
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Invoice')
    Left = 57
    Top = 149
    object InvoiceRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object InvoiceNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
      Size = 40
    end
    object InvoiceData: TDateField
      FieldName = 'Data'
      Origin = 'Data'
    end
    object InvoiceImp_Exp: TStringField
      FieldName = 'Imp_Exp'
      Origin = 'Imp_Exp'
      FixedChar = True
      Size = 1
    end
    object InvoiceProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object InvoiceImportador: TSmallintField
      FieldName = 'Importador'
      Origin = 'Importador'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceExportador: TSmallintField
      FieldName = 'Exportador'
      Origin = 'Exportador'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'INCOTERMS'
      FixedChar = True
      Size = 3
    end
    object InvoicePais_Origem: TStringField
      FieldName = 'Pais_Origem'
      Origin = 'Pais_Origem'
      Size = 4
    end
    object InvoicePais_Destino: TStringField
      FieldName = 'Pais_Destino'
      Origin = 'Pais_Destino'
      Size = 4
    end
    object InvoiceDestino: TStringField
      FieldName = 'Destino'
      Origin = 'Destino'
      Size = 60
    end
    object InvoiceCondicao_Venda: TMemoField
      FieldName = 'Condicao_Venda'
      Origin = 'Condicao_Venda'
      BlobType = ftMemo
    end
    object InvoiceCondicao_Cambio: TSmallintField
      FieldName = 'Condicao_Cambio'
      Origin = 'Condicao_Cambio'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceMoeda: TSmallintField
      FieldName = 'Moeda'
      Origin = 'Moeda'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceTaxa_Cambio: TFloatField
      FieldName = 'Taxa_Cambio'
      Origin = 'Taxa_Cambio'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceLocal_Embarque: TStringField
      FieldName = 'Local_Embarque'
      Origin = 'Local_Embarque'
      Size = 50
    end
    object InvoiceData_Embarque: TDateField
      FieldName = 'Data_Embarque'
      Origin = 'Data_Embarque'
    end
    object InvoiceLocal_Chegada: TStringField
      FieldName = 'Local_Chegada'
      Origin = 'Local_Chegada'
      Size = 50
    end
    object InvoicePartida: TStringField
      FieldName = 'Partida'
      Origin = 'Partida'
      Size = 50
    end
    object InvoiceDados_Bancarios: TMemoField
      FieldName = 'Dados_Bancarios'
      Origin = 'Dados_Bancarios'
      BlobType = ftMemo
    end
    object InvoiceNotificar: TMemoField
      FieldName = 'Notificar'
      Origin = 'Notificar'
      BlobType = ftMemo
    end
    object InvoiceDestinatario: TMemoField
      FieldName = 'Destinatario'
      Origin = 'Destinatario'
      BlobType = ftMemo
    end
    object InvoicePeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoicePeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceVolumes_Quantidade: TFloatField
      FieldName = 'Volumes_Quantidade'
      Origin = 'Volumes_Quantidade'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceVolumes_Numero: TStringField
      FieldName = 'Volumes_Numero'
      Origin = 'Volumes_Numero'
      Size = 30
    end
    object InvoiceMetro_Cubico: TFloatField
      FieldName = 'Metro_Cubico'
      Origin = 'Metro_Cubico'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceTotal_Fatura: TCurrencyField
      FieldName = 'Total_Fatura'
      Origin = 'Total_Fatura'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceTotal_FaturaME: TCurrencyField
      FieldName = 'Total_FaturaME'
      Origin = 'Total_FaturaME'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceQuantidade_Total: TFloatField
      FieldName = 'Quantidade_Total'
      Origin = 'Quantidade_Total'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceObservacoes: TMemoField
      FieldName = 'Observacoes'
      Origin = 'Observacoes'
      BlobType = ftMemo
    end
    object InvoiceData_Vencimento: TDateField
      FieldName = 'Data_Vencimento'
      Origin = 'Data_Vencimento'
    end
    object InvoiceData_BL: TDateField
      FieldName = 'Data_BL'
      Origin = 'Data_BL'
    end
    object InvoiceCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'Cliente'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceBanco_Exportador: TSmallintField
      FieldName = 'Banco_Exportador'
      Origin = 'Banco_Exportador'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceBanco_Importador: TSmallintField
      FieldName = 'Banco_Importador'
      Origin = 'Banco_Importador'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoicePO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object InvoiceBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object InvoiceEspecie: TStringField
      FieldName = 'Especie'
      Origin = 'Especie'
    end
    object InvoiceVia_Transporte: TSmallintField
      FieldName = 'Via_Transporte'
      Origin = 'Via_Transporte'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceProposta: TIntegerField
      FieldName = 'Proposta'
      Origin = 'Proposta'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceTransbordo: TStringField
      FieldName = 'Transbordo'
      Origin = 'Transbordo'
      Size = 60
    end
    object InvoiceTransit_Time: TStringField
      FieldName = 'Transit_Time'
      Origin = 'Transit_Time'
      Size = 30
    end
    object InvoiceFrequencia: TStringField
      FieldName = 'Frequencia'
      Origin = 'Frequencia'
      Size = 30
    end
    object InvoiceArmador: TStringField
      FieldName = 'Armador'
      Origin = 'Armador'
      Size = 60
    end
    object InvoiceContainer: TStringField
      FieldName = 'Container'
      Origin = 'Container'
      Size = 60
    end
    object InvoiceProduto: TStringField
      FieldName = 'Produto'
      Origin = 'Produto'
      Size = 60
    end
    object InvoiceUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'Unidade'
      Size = 3
    end
    object InvoiceTipo_Embalagem: TStringField
      FieldName = 'Tipo_Embalagem'
      Origin = 'Tipo_Embalagem'
      Size = 30
    end
    object InvoiceVolume: TStringField
      FieldName = 'Volume'
      Origin = 'Volume'
      Size = 60
    end
    object InvoicePallets: TSmallintField
      FieldName = 'Pallets'
      Origin = 'Pallets'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceComissao_Recebida: TFloatField
      FieldName = 'Comissao_Recebida'
      Origin = 'Comissao_Recebida'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceComissao_Paga: TFloatField
      FieldName = 'Comissao_Paga'
      Origin = 'Comissao_Paga'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceQuantidade_Unidade: TFloatField
      FieldName = 'Quantidade_Unidade'
      Origin = 'Quantidade_Unidade'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceFator: TFloatField
      FieldName = 'Fator'
      Origin = 'Fator'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceMoeda_Exp: TSmallintField
      FieldName = 'Moeda_Exp'
      Origin = 'Moeda_Exp'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceCotacao_Exp: TFloatField
      FieldName = 'Cotacao_Exp'
      Origin = 'Cotacao_Exp'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceMoeda_Imp: TSmallintField
      FieldName = 'Moeda_Imp'
      Origin = 'Moeda_Imp'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceCotacao_Imp: TFloatField
      FieldName = 'Cotacao_Imp'
      Origin = 'Cotacao_Imp'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceFrete_PrePaid: TCurrencyField
      FieldName = 'Frete_PrePaid'
      Origin = 'Frete_PrePaid'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceMoeda_Frete: TSmallintField
      FieldName = 'Moeda_Frete'
      Origin = 'Moeda_Frete'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceCotacao_Frete: TFloatField
      FieldName = 'Cotacao_Frete'
      Origin = 'Cotacao_Frete'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceIRPJ: TFloatField
      FieldName = 'IRPJ'
      Origin = 'IRPJ'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceCSLL: TFloatField
      FieldName = 'CSLL'
      Origin = 'CSLL'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceBase_Comissao: TStringField
      FieldName = 'Base_Comissao'
      Origin = 'Base_Comissao'
      FixedChar = True
      Size = 1
    end
    object InvoiceLocal_Entrega: TStringField
      FieldName = 'Local_Entrega'
      Origin = 'Local_Entrega'
      Size = 60
    end
    object InvoiceRecinto_Aduaneiro: TStringField
      FieldName = 'Recinto_Aduaneiro'
      Origin = 'Recinto_Aduaneiro'
      Size = 7
    end
    object InvoiceDI: TStringField
      FieldName = 'DI'
      Origin = 'DI'
      Size = 15
    end
    object InvoiceLocal_Condicao: TStringField
      FieldName = 'Local_Condicao'
      Origin = 'Local_Condicao'
      Size = 30
    end
    object InvoiceMetodo_Valoracao: TSmallintField
      FieldName = 'Metodo_Valoracao'
      Origin = 'Metodo_Valoracao'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceCobertura_Cambial: TStringField
      FieldName = 'Cobertura_Cambial'
      Origin = 'Cobertura_Cambial'
      Size = 15
    end
    object InvoiceFinanciadora: TSmallintField
      FieldName = 'Financiadora'
      Origin = 'Financiadora'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceMotivo_SemCobertura: TSmallintField
      FieldName = 'Motivo_SemCobertura'
      Origin = 'Motivo_SemCobertura'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceAplicacao: TStringField
      FieldName = 'Aplicacao'
      Origin = 'Aplicacao'
      Size = 23
    end
    object InvoiceCondicao_Mercadoria: TStringField
      FieldName = 'Condicao_Mercadoria'
      Origin = 'Condicao_Mercadoria'
      Size = 5
    end
    object InvoiceSeguro: TFloatField
      FieldName = 'Seguro'
      Origin = 'Seguro'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceMoeda_Seguro: TSmallintField
      FieldName = 'Moeda_Seguro'
      Origin = 'Moeda_Seguro'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoicePais_Aquisicao: TSmallintField
      FieldName = 'Pais_Aquisicao'
      Origin = 'Pais_Aquisicao'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceTransportador: TSmallintField
      FieldName = 'Transportador'
      Origin = 'Transportador'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceFrete_Collect: TCurrencyField
      FieldName = 'Frete_Collect'
      Origin = 'Frete_Collect'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceCondicao_Frete: TStringField
      FieldName = 'Condicao_Frete'
      Origin = 'Condicao_Frete'
      Size = 60
    end
    object InvoiceNumero_ROF: TStringField
      FieldName = 'Numero_ROF'
      Origin = 'Numero_ROF'
      Size = 8
    end
    object InvoiceValor_CoberturaCambial: TCurrencyField
      FieldName = 'Valor_CoberturaCambial'
      Origin = 'Valor_CoberturaCambial'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object InvoiceModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object dsInvoice: TDataSource
    DataSet = Invoice
    Left = 57
    Top = 199
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo, Descricao_Reduzida, Descricao'
      'from'
      'Produtos')
    Left = 157
    Top = 340
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 157
    Top = 387
  end
  object Cotacao: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Cotacao')
    Left = 157
    Top = 529
  end
  object dsCotacao: TDataSource
    DataSet = Cotacao
    Left = 157
    Top = 579
  end
  object CondicaoCambial: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CondicaoCambial')
    Left = 253
    Top = 150
  end
  object dsCondicaoCambial: TDataSource
    DataSet = CondicaoCambial
    Left = 253
    Top = 200
  end
  object MetodoValoracao: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM MetodoValoracao')
    Left = 253
    Top = 249
  end
  object dsMetodoValoracao: TDataSource
    DataSet = MetodoValoracao
    Left = 253
    Top = 293
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ProcessosImp')
    Left = 253
    Top = 341
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 253
    Top = 388
  end
  object PO: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PO')
    Left = 253
    Top = 438
  end
  object dsPO: TDataSource
    DataSet = PO
    Left = 253
    Top = 480
  end
  object genciaFinanciadora: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM genciaFinanciadora')
    Left = 253
    Top = 530
  end
  object dsgenciaFinanciadora: TDataSource
    DataSet = genciaFinanciadora
    Left = 253
    Top = 580
  end
  object MotivoCambial: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM MotivoCambial')
    Left = 357
    Top = 149
  end
  object dsMotivoCambial: TDataSource
    DataSet = MotivoCambial
    Left = 357
    Top = 199
  end
  object Modalidades: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadeImportacao')
    Left = 357
    Top = 248
  end
  object dsModalidades: TDataSource
    DataSet = Modalidades
    Left = 357
    Top = 292
  end
  object ViaTransporte: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ViaTransporte')
    Left = 357
    Top = 340
  end
  object dsViaTransporte: TDataSource
    DataSet = ViaTransporte
    Left = 357
    Top = 387
  end
  object NCM: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM NCM')
    Left = 357
    Top = 437
  end
  object dsNCM: TDataSource
    DataSet = NCM
    Left = 357
    Top = 479
  end
  object Orgaosnuentes: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Cybersoft_CadastrosdboOrgaosnuentes')
    Left = 357
    Top = 527
  end
  object dsOrgaosnuentes: TDataSource
    DataSet = Orgaosnuentes
    Left = 357
    Top = 579
  end
  object LPCO: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM LPCO')
    Left = 462
    Top = 149
  end
  object dsLPCO: TDataSource
    DataSet = LPCO
    Left = 462
    Top = 199
  end
  object AgFinanc: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from AgenciaFinanciadora ')
    Left = 462
    Top = 439
  end
  object dsAgFinanc: TDataSource
    DataSet = AgFinanc
    Left = 462
    Top = 486
  end
  object MetodoVal: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from MetodoValoracao')
    Left = 465
    Top = 527
  end
  object dsMetodoVal: TDataSource
    DataSet = MetodoVal
    Left = 465
    Top = 579
  end
  object InvoiceItens: TFDQuery
    IndexFieldNames = 'Empresa;Invoice'
    MasterSource = dsInvoice
    MasterFields = 'Empresa;Numero'
    DetailFields = 'Empresa;Invoice'
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from InvoiceItens'
      '--where Empresa = :Empresa'
      '--and Invoice = :Numero'
      '--where Invoice = '#39'003/23'#39)
    Left = 156
    Top = 154
    object InvoiceItensRegistro: TLargeintField
      FieldName = 'Registro'
      Origin = 'Registro'
      Required = True
    end
    object InvoiceItensItem: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'Item'
      Origin = 'Item'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object InvoiceItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object InvoiceItensInvoice: TStringField
      FieldName = 'Invoice'
      Origin = 'Invoice'
      Size = 40
    end
    object InvoiceItensCodigo_Mercadoria: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object InvoiceItensUnidade_Quantidade: TStringField
      FieldName = 'Unidade_Quantidade'
      Origin = 'Unidade_Quantidade'
      Size = 3
    end
    object InvoiceItensUnidade_Peso: TStringField
      FieldName = 'Unidade_Peso'
      Origin = 'Unidade_Peso'
      Size = 3
    end
    object InvoiceItensUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'Unidade'
      Size = 3
    end
    object InvoiceItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
    object InvoiceItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      DisplayFormat = ',##0.0000'
    end
    object InvoiceItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
      DisplayFormat = ',##0.000'
    end
    object InvoiceItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
      DisplayFormat = ',##0.000'
    end
    object InvoiceItensValor_UnitarioME: TFloatField
      FieldName = 'Valor_UnitarioME'
      Origin = 'Valor_UnitarioME'
      DisplayFormat = ',##0.0000'
    end
    object InvoiceItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object InvoiceItensImp_Exp: TStringField
      FieldName = 'Imp_Exp'
      Origin = 'Imp_Exp'
      FixedChar = True
      Size = 1
    end
    object InvoiceItensFabricante: TSmallintField
      FieldName = 'Fabricante'
      Origin = 'Fabricante'
    end
    object InvoiceItensPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object InvoiceItensVinculo_CompVend: TStringField
      FieldName = 'Vinculo_CompVend'
      Origin = 'Vinculo_CompVend'
      Size = 32
    end
    object InvoiceItensCertificado_MercoSulTipo: TStringField
      FieldName = 'Certificado_MercoSulTipo'
      Origin = 'Certificado_MercoSulTipo'
      FixedChar = True
      Size = 5
    end
    object InvoiceItensCertificado_MercoSulNumero: TStringField
      FieldName = 'Certificado_MercoSulNumero'
      Origin = 'Certificado_MercoSulNumero'
    end
    object InvoiceItensCertificado_MercoSulQtde: TFloatField
      FieldName = 'Certificado_MercoSulQtde'
      Origin = 'Certificado_MercoSulQtde'
    end
    object InvoiceItensDescricao: TStringField
      FieldKind = fkLookup
      FieldName = 'Descricao'
      LookupDataSet = Produtos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Codigo_Mercadoria'
      Size = 250
      Lookup = True
    end
  end
  object dsInvoiceItens: TDataSource
    DataSet = InvoiceItens
    Left = 154
    Top = 202
  end
end
