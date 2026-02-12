object fCadEmpresas: TfCadEmpresas
  Left = 0
  Top = 0
  Width = 1251
  Height = 1000
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1251
    Height = 965
    Hint = ''
    BodyRTL = False
    ActivePage = aFicha
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1243
        Height = 937
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsEmpresas
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Carregando dados...'
        RowHeight = 24
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Razao_Social'
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Style = [fsBold]
            Width = 484
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ'
            Title.Font.Style = [fsBold]
            Width = 116
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Estado'
            Title.Alignment = taCenter
            Title.Caption = 'Estado'
            Title.Font.Style = [fsBold]
            Width = 42
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Numero_Filial'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Filial'
            Title.Font.Style = [fsBold]
            Width = 74
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Telefone1'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Title.Font.Style = [fsBold]
            Width = 124
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end>
      end
    end
    object aFicha: TUniTabSheet
      Hint = ''
      Caption = 'Endere'#231'o'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1243
        Height = 937
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1241
          935)
        ScrollHeight = 731
        object pFicha: TUniPanel
          Left = 131
          Top = 43
          Width = 1068
          Height = 688
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object UniPanel4: TUniPanel
            Tag = 1
            Left = 9
            Top = 10
            Width = 690
            Height = 274
            Hint = ''
            ShowHint = True
            TabOrder = 2
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'Endere'#231'o'
            Caption = ''
            object UniDBEdit3: TUniDBEdit
              Left = 8
              Top = 31
              Width = 670
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Razao_Social'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Raz'#227'o Social'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit6: TUniDBEdit
              Left = 8
              Top = 85
              Width = 670
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'CEP'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'CEP'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit7: TUniDBEdit
              Left = 8
              Top = 112
              Width = 486
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Rua'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Rua'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit8: TUniDBEdit
              Left = 500
              Top = 112
              Width = 178
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Rua_Numero'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'N'#186
              FieldLabelWidth = 60
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit11: TUniDBEdit
              Left = 8
              Top = 139
              Width = 670
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Complemento'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Complemento'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cFilial: TUniDBEdit
              Left = 8
              Top = 4
              Width = 209
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Numero_Filial'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 6
              InputMask.MaskChar = ' '
              InputMask.UnmaskText = True
              InputMask.RemoveWhiteSpace = True
              FieldLabel = 'N'#186' Filial'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit16: TUniDBEdit
              Left = 8
              Top = 58
              Width = 670
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Nome_Fantasia'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'Nome Fantasia'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox2: TUniDBLookupComboBox
              Left = 8
              Top = 193
              Width = 306
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Estado'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
            object UniDBEdit1: TUniDBEdit
              Left = 8
              Top = 166
              Width = 670
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Bairro'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'Bairro'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox1: TUniDBLookupComboBox
              Left = 320
              Top = 193
              Width = 358
              Height = 25
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Nome'
              ListSource = dsMuni
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Municipio_Codigo'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Munic'#237'pio'
              FieldLabelWidth = 60
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBEdit2: TUniDBEdit
              Left = 8
              Top = 220
              Width = 306
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Telefone1'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 11
              FieldLabel = 'Telefone 1'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit4: TUniDBEdit
              Left = 320
              Top = 220
              Width = 358
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Telefone2'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 12
              FieldLabel = 'Telefone 2'
              FieldLabelWidth = 60
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
          end
          object UniPanel5: TUniPanel
            Tag = 1
            Left = 9
            Top = 292
            Width = 690
            Height = 114
            Hint = ''
            ShowHint = True
            TabOrder = 3
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'Diretor / Responsavel'
            Caption = ''
            object UniDBEdit24: TUniDBEdit
              Left = 441
              Top = 5
              Width = 237
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Diretor_CPF'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'CPF'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit25: TUniDBEdit
              Left = 8
              Top = 5
              Width = 429
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Diretor'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Diretor (Nome)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit19: TUniDBEdit
              Left = 8
              Top = 32
              Width = 429
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Responsavel'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Respons'#225'vel (Nome)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit20: TUniDBEdit
              Left = 441
              Top = 32
              Width = 237
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Responsavel_CPF'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'CPF'
              FieldLabelWidth = 80
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit22: TUniDBEdit
              Left = 8
              Top = 59
              Width = 429
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Responsavel_Funcao'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Respons'#225'vel (Fun'#231#227'o)'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
          end
          object UniPanel7: TUniPanel
            Tag = 1
            Left = 9
            Top = 414
            Width = 690
            Height = 250
            Hint = ''
            ShowHint = True
            TabOrder = 4
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'Registros / Caracter'#237'sticas'
            Caption = ''
            object UniDBEdit12: TUniDBEdit
              Left = 284
              Top = 32
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'IM'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Incri'#231#227'o Municipal'
              FieldLabelWidth = 105
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cIE: TUniDBEdit
              Left = 284
              Top = 5
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'IE'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Inscri'#231#227'o Estadual'
              FieldLabelWidth = 105
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object cCNPJ: TUniDBEdit
              Left = 8
              Top = 5
              Width = 269
              Height = 25
              Hint = ''
              Enabled = False
              ShowHint = True
              ParentShowHint = False
              DataField = 'CNPJ'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              InputMask.MaskChar = ' '
              InputMask.UnmaskText = True
              InputMask.RemoveWhiteSpace = True
              FieldLabel = 'CNPJ'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit10: TUniDBEdit
              Left = 8
              Top = 86
              Width = 269
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Inscricao_SUFRAMA'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Inscri'#231#227'o SUFRAMA'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit14: TUniDBEdit
              Left = 8
              Top = 59
              Width = 269
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Junta_Codigo'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Cod.Junta'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBDateTimePicker1: TUniDBDateTimePicker
              Left = 284
              Top = 59
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Junta_Data'
              DataSource = dsEmpresas
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 6
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              BorderStyle = ubsInset
              FieldLabel = 'Data'
              FieldLabelWidth = 105
              FieldLabelSeparator = ' '
            end
            object UniDBEdit9: TUniDBEdit
              Left = 8
              Top = 113
              Width = 269
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Codigo_Atividade'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'C'#243'd.Ramo Atividade'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit13: TUniDBEdit
              Left = 284
              Top = 113
              Width = 397
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Ramo_Atividade'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'Desc.Ramo Atividade'
              FieldLabelWidth = 105
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit15: TUniDBEdit
              Left = 8
              Top = 32
              Width = 269
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'CNAE'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'CNAE Principal'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit17: TUniDBEdit
              Left = 8
              Top = 140
              Width = 269
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'NIRE'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = 'NIRE'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBDateTimePicker2: TUniDBDateTimePicker
              Left = 284
              Top = 140
              Width = 250
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'NIRE_Data'
              DataSource = dsEmpresas
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 11
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              BorderStyle = ubsInset
              FieldLabel = 'Data'
              FieldLabelWidth = 105
              FieldLabelSeparator = ' '
            end
            object cBeneficio_Fiscal: TUniDBLookupComboBox
              Left = 8
              Top = 194
              Width = 381
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Estado;Nome'
              ListSource = dsBeneficio
              KeyField = 'Nome'
              ListFieldIndex = 2
              BorderStyle = ubsInset
              DataField = 'Beneficio_Fiscal'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Beneficio Fiscal'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBEdit18: TUniDBEdit
              Left = 8
              Top = 167
              Width = 269
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'RNTRC'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = '(RNTRC'
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
          end
          object UniDBCheckBox2: TUniDBCheckBox
            Left = 720
            Top = 225
            Width = 130
            Height = 15
            Hint = ''
            ShowHint = True
            DataField = 'Transportadora'
            DataSource = dsEmpresas
            Caption = 'Transportadora'
            ParentFont = False
            Font.Height = -13
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 720
            Top = 246
            Width = 130
            Height = 15
            Hint = ''
            ShowHint = True
            DataField = 'Distribuidora'
            DataSource = dsEmpresas
            Caption = 'Distribuidora'
            ParentFont = False
            Font.Height = -13
            TabOrder = 6
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBCheckBox3: TUniDBCheckBox
            Left = 720
            Top = 204
            Width = 130
            Height = 15
            Hint = ''
            ShowHint = True
            DataField = 'Desativada'
            Caption = 'Desativada'
            ParentFont = False
            Font.Height = -13
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
          end
          object cRegime_Tributario: TUniDBRadioGroup
            Left = 720
            Top = 282
            Width = 335
            Height = 100
            Hint = ''
            ShowHint = True
            DataField = 'Regime_Tributario'
            DataSource = dsEmpresas
            Caption = 'Regime Tribut'#225'rio'
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              '1 - Simples Nacional'
              '2 - Simples Nacional - excesso de sublimite da receita bruta'
              '3 - Regime Normal')
            Values.Strings = (
              '1'
              '2'
              '3')
          end
          object cRegime_Apuracao: TUniDBRadioGroup
            Left = 720
            Top = 402
            Width = 335
            Height = 73
            Hint = ''
            ShowHint = True
            DataField = 'Regime_Apuracao'
            DataSource = dsEmpresas
            Caption = 'Regime de Apura'#231#227'o'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Lucro Real'
              'Lucro Presumido')
            Values.Strings = (
              'R'
              'P')
          end
          object cApuracao_IPI: TUniDBRadioGroup
            Left = 720
            Top = 497
            Width = 335
            Height = 73
            Hint = ''
            ShowHint = True
            DataField = 'Apuracao_IPI'
            DataSource = dsEmpresas
            Caption = 'Apura'#231#227'o do IPI'
            TabOrder = 10
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Mensal'
              'Decendial')
            Values.Strings = (
              'M'
              'D')
          end
          object UniPanel1: TUniPanel
            Tag = 1
            Left = 718
            Top = 10
            Width = 335
            Height = 175
            Hint = ''
            ShowHint = True
            TabOrder = 1
            BorderStyle = ubsInset
            TitleVisible = True
            TitleAlign = taCenter
            Title = 'Logo'
            Caption = ''
            Color = clWindow
            object iLogo: TUniImage
              AlignWithMargins = True
              Left = 79
              Top = 8
              Width = 197
              Height = 136
              Hint = ''
              ShowHint = True
              Center = True
              Stretch = True
              Proportional = True
              Transparent = True
              FitWidth = True
            end
            object bLogo: TUniFileUploadButton
              Left = 5
              Top = 5
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Caption = ''
              Images = UniMainModule.imgBotoes
              ImageIndex = 13
              Messages.Uploading = 'Uploading...'
              Messages.PleaseWait = 'Please Wait'
              Messages.UploadError = 'Upload Error'
              Messages.UploadTimeout = 'Timeout occurred...'
              Messages.MaxSizeError = 'File is bigger than maximum allowed size'
              Messages.MaxFilesError = 'You can upload maximum %d files.'
              ShowUploadingMsg = False
              OnCompleted = bLogoCompleted
            end
          end
        end
      end
    end
    object aContador: TUniTabSheet
      Hint = ''
      Caption = 'Representante Legal / Contabilista'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1243
        Height = 937
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'      config.' +
            'cls = '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1241
          935)
        ScrollHeight = 742
        object pContab: TUniPanel
          Left = 108
          Top = 16
          Width = 643
          Height = 726
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DIRETOR/RESPOS'#193'VEL'
          Caption = ''
          Color = clTeal
          object UniPanel8: TUniPanel
            Tag = 1
            Left = 11
            Top = 10
            Width = 624
            Height = 334
            Hint = ''
            ShowHint = True
            TabOrder = 1
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'Representante Legal'
            Caption = ''
            object UniDBEdit39: TUniDBEdit
              Left = 8
              Top = 7
              Width = 604
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Representante_Nome'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              InputMask.MaskChar = ' '
              InputMask.UnmaskText = True
              InputMask.RemoveWhiteSpace = True
              FieldLabel = 'Nome'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit40: TUniDBEdit
              Left = 312
              Top = 34
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CRCSequencial'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Sequencial (CRC)'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit41: TUniDBEdit
              Left = 8
              Top = 34
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CRC'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'CRC'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit42: TUniDBEdit
              Left = 8
              Top = 88
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CPF'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'CPF'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit43: TUniDBEdit
              Left = 8
              Top = 115
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CEP'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'CEP'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBDateTimePicker4: TUniDBDateTimePicker
              Left = 8
              Top = 61
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CRCData'
              DataSource = dsEmpresas
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 6
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              BorderStyle = ubsInset
              FieldLabel = 'CRC Validade'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
            end
            object UniDBEdit44: TUniDBEdit
              Left = 312
              Top = 61
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CRCUF'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'UF (CRC)'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit45: TUniDBEdit
              Left = 312
              Top = 88
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_CNPJ'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'CNPJ'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit46: TUniDBEdit
              Left = 8
              Top = 142
              Width = 416
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Rua'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'Rua'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit47: TUniDBEdit
              Left = 430
              Top = 142
              Width = 182
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Numero'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = 'N'#186
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox9: TUniDBLookupComboBox
              Left = 8
              Top = 196
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Representante_Estado'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
            object UniDBLookupComboBox10: TUniDBLookupComboBox
              Left = 312
              Top = 196
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Nome'
              ListSource = dsMuni
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Representante_Municipio'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Munic'#237'pio'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBEdit48: TUniDBEdit
              Left = 312
              Top = 169
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Bairro'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = 'Bairro'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit49: TUniDBEdit
              Left = 8
              Top = 250
              Width = 237
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Telefone'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 14
              FieldLabel = 'Telefone'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox11: TUniDBLookupComboBox
              Left = 8
              Top = 223
              Width = 604
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsQualificacao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Representante_Qualificacao'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Qualifica'#231#227'o'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
            object UniDBEdit50: TUniDBEdit
              Left = 251
              Top = 250
              Width = 361
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Email'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 16
              FieldLabel = 'E-Mail'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit51: TUniDBEdit
              Left = 8
              Top = 169
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Complemento'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 17
              FieldLabel = 'Complemento'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 13
              Top = 282
              Width = 322
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Representante_SignatarioResp'
              DataSource = dsEmpresas
              Caption = 'Signatario '#233' Respons'#225'vel pela assinatura da ECD.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 18
              ParentColor = False
              Color = clBtnFace
            end
          end
          object UniPanel6: TUniPanel
            Tag = 1
            Left = 11
            Top = 355
            Width = 624
            Height = 334
            Hint = ''
            ShowHint = True
            TabOrder = 2
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'Representante Legal'
            Caption = ''
            object UniDBEdit5: TUniDBEdit
              Left = 8
              Top = 7
              Width = 604
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Contador_Nome'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              InputMask.MaskChar = ' '
              InputMask.UnmaskText = True
              InputMask.RemoveWhiteSpace = True
              FieldLabel = 'Nome'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit23: TUniDBEdit
              Left = 312
              Top = 34
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CRCSequencial'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Sequencial (CRC)'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit26: TUniDBEdit
              Left = 8
              Top = 34
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CRC'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'CRC'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit27: TUniDBEdit
              Left = 8
              Top = 88
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CPF'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'CPF'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit28: TUniDBEdit
              Left = 8
              Top = 115
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CEP'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'CEP'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBDateTimePicker3: TUniDBDateTimePicker
              Left = 8
              Top = 61
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CRCData'
              DataSource = dsEmpresas
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 6
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              BorderStyle = ubsInset
              FieldLabel = 'CRC Validade'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
            end
            object UniDBEdit29: TUniDBEdit
              Left = 312
              Top = 61
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CRCUF'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'UF (CRC)'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit30: TUniDBEdit
              Left = 312
              Top = 88
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_CNPJ'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'CNPJ'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit31: TUniDBEdit
              Left = 8
              Top = 142
              Width = 416
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_Rua'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'Rua'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit32: TUniDBEdit
              Left = 430
              Top = 142
              Width = 182
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_Numero'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = 'N'#186
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox3: TUniDBLookupComboBox
              Left = 8
              Top = 196
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Contador_Estado'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
            object UniDBLookupComboBox4: TUniDBLookupComboBox
              Left = 312
              Top = 196
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Nome'
              ListSource = dsMuni
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Contador_Municipio'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Munic'#237'pio'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBEdit33: TUniDBEdit
              Left = 312
              Top = 169
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_Bairro'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = 'Bairro'
              FieldLabelWidth = 90
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit34: TUniDBEdit
              Left = 8
              Top = 250
              Width = 237
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_Telefone'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 14
              FieldLabel = 'Telefone'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBLookupComboBox5: TUniDBLookupComboBox
              Left = 8
              Top = 223
              Width = 604
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsQualificacao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsInset
              DataField = 'Contador_Qualificacao'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Qualifica'#231#227'o'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
            object UniDBEdit35: TUniDBEdit
              Left = 251
              Top = 250
              Width = 361
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_Email'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 16
              FieldLabel = 'E-Mail'
              FieldLabelWidth = 40
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit36: TUniDBEdit
              Left = 8
              Top = 169
              Width = 300
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Contador_Complemento'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 17
              FieldLabel = 'Complemento'
              FieldLabelWidth = 110
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 13
              Top = 282
              Width = 322
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Contador_SignatarioResp'
              DataSource = dsEmpresas
              Caption = 'Signatario '#233' Respons'#225'vel pela assinatura da ECD.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 18
              ParentColor = False
              Color = clBtnFace
            end
          end
        end
      end
    end
    object aParametros: TUniTabSheet
      Hint = ''
      Caption = 'Par'#226'metros'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1243
        Height = 937
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'      config.' +
            'cls = '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1241
          935)
        ScrollHeight = 683
        object pParam: TUniPanel
          Left = 135
          Top = 22
          Width = 804
          Height = 661
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DIRETOR/RESPOS'#193'VEL'
          Caption = ''
          Color = clTeal
          object UniDBEdit65: TUniDBEdit
            Left = 221
            Top = 16
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'CartaCorrecao_Layout'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Layout CC-e'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit66: TUniDBEdit
            Left = 424
            Top = 16
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'CTE_Layout'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Layout CT-e'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit67: TUniDBEdit
            Left = 18
            Top = 44
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Manifesto_LayOut'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Layout Manifesto'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit68: TUniDBEdit
            Left = 221
            Top = 44
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'GNRE_Layout'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Layout GNRE'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit53: TUniDBEdit
            Left = 18
            Top = 16
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFe_Layout'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Layout NF-e'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBLookupComboBox12: TUniDBLookupComboBox
            Left = 18
            Top = 71
            Width = 403
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModelos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'NFe_EntradaModelo'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'NF-e Modelo (Entrada)'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csSimple
            OnChange = UniDBLookupComboBox2Change
          end
          object UniDBEdit52: TUniDBEdit
            Left = 424
            Top = 71
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFe_EntradaSerie'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'S'#233'rie'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit55: TUniDBEdit
            Left = 627
            Top = 71
            Width = 160
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFe_EntradaNumero'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#250'mero'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBLookupComboBox13: TUniDBLookupComboBox
            Left = 18
            Top = 98
            Width = 403
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModelos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'NFe_SaidaModelo'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'NF-e Modelo (Sa'#237'da)'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csSimple
            OnChange = UniDBLookupComboBox2Change
          end
          object UniDBEdit56: TUniDBEdit
            Left = 424
            Top = 98
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFe_SaidaSerie'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'S'#233'rie'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit57: TUniDBEdit
            Left = 627
            Top = 98
            Width = 160
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFe_SaidaNumero'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 11
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#250'mero'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBLookupComboBox14: TUniDBLookupComboBox
            Left = 18
            Top = 125
            Width = 403
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModelos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'CTe_Modelo'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Ct-e Modelo'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csSimple
            OnChange = UniDBLookupComboBox2Change
          end
          object UniDBEdit54: TUniDBEdit
            Left = 424
            Top = 125
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'CTe_Serie'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 13
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'S'#233'rie'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit58: TUniDBEdit
            Left = 627
            Top = 125
            Width = 160
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'CTe_Numero'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 14
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#250'mero'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBLookupComboBox15: TUniDBLookupComboBox
            Left = 18
            Top = 152
            Width = 403
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsModelos
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsInset
            DataField = 'NFSe_Modelo'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 15
            Color = clWindow
            FieldLabel = 'NFS-e Modelo'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            ForceSelection = True
            Style = csSimple
            OnChange = UniDBLookupComboBox2Change
          end
          object UniDBEdit59: TUniDBEdit
            Left = 424
            Top = 152
            Width = 200
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFSe_Serie'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 16
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'S'#233'rie'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit60: TUniDBEdit
            Left = 627
            Top = 152
            Width = 160
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'NFSe_Numero'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 17
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#250'mero'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit61: TUniDBEdit
            Left = 19
            Top = 179
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Diario_Numero'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 18
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#186' Livro Di'#225'rio'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit62: TUniDBEdit
            Left = 293
            Top = 179
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Diario_Pagina'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 19
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'P'#225'gina do Di'#225'rio'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBDateTimePicker5: TUniDBDateTimePicker
            Left = 19
            Top = 206
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Ultimo_Encerramento'
            DataSource = dsEmpresas
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 20
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = #218'ltimo Encerramento'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
          end
          object UniDBDateTimePicker6: TUniDBDateTimePicker
            Left = 293
            Top = 206
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Fechamento_Financeiro'
            DataSource = dsEmpresas
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 21
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            BorderStyle = ubsInset
            FieldLabel = 'Fechamento Financ'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
          end
          object UniDBEdit64: TUniDBEdit
            Left = 19
            Top = 233
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Processo'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 22
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#186' Processo (Import)'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit69: TUniDBEdit
            Left = 293
            Top = 233
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Mascara_Processo'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 23
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'M'#225'scara Processo'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBCheckBox8: TUniDBCheckBox
            Left = 566
            Top = 232
            Width = 180
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Processo_Automatico'
            DataSource = dsEmpresas
            Caption = 'Gerar N'#250'mero do Processo'
            ParentFont = False
            Font.Height = -13
            TabOrder = 24
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 250
          end
          object UniDBEdit70: TUniDBEdit
            Left = 19
            Top = 260
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Processo_Exp'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 25
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#186' Processo (Export)'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit71: TUniDBEdit
            Left = 293
            Top = 260
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Mascara_ProcessoExp'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 26
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'M'#225'scara Processo'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBCheckBox9: TUniDBCheckBox
            Left = 566
            Top = 260
            Width = 180
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Processo_AutomaticoExp'
            DataSource = dsEmpresas
            Caption = 'Gerar N'#250'mero do Processo'
            ParentFont = False
            Font.Height = -13
            TabOrder = 27
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 250
          end
          object UniDBEdit72: TUniDBEdit
            Left = 19
            Top = 287
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'PO'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 28
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'N'#186' PO'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit73: TUniDBEdit
            Left = 293
            Top = 287
            Width = 270
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Mascara_PO'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 29
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'M'#225'scara PO'
            FieldLabelWidth = 110
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBCheckBox10: TUniDBCheckBox
            Left = 566
            Top = 286
            Width = 180
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'PO_Automatico'
            DataSource = dsEmpresas
            Caption = 'Gerar N'#250'mero do PO'
            ParentFont = False
            Font.Height = -13
            TabOrder = 30
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 250
          end
          object UniDBRadioGroup2: TUniDBRadioGroup
            Left = 19
            Top = 552
            Width = 150
            Height = 76
            Hint = ''
            ShowHint = True
            DataField = 'Ambiente_NFe'
            DataSource = dsEmpresas
            Caption = 'Ambiente NF-e'
            TabOrder = 31
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            Values.Strings = (
              '1'
              '2')
          end
          object UniDBRadioGroup3: TUniDBRadioGroup
            Left = 194
            Top = 552
            Width = 150
            Height = 76
            Hint = ''
            ShowHint = True
            DataField = 'Ambiente_CTe'
            DataSource = dsEmpresas
            Caption = 'Ambiente CT-e'
            TabOrder = 32
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            Values.Strings = (
              '1'
              '2')
          end
          object UniDBRadioGroup4: TUniDBRadioGroup
            Left = 368
            Top = 552
            Width = 150
            Height = 76
            Hint = ''
            ShowHint = True
            DataField = 'Ambiente_GNRE'
            DataSource = dsEmpresas
            Caption = 'Ambiente GNRE'
            TabOrder = 33
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            Values.Strings = (
              '1'
              '2')
          end
          object UniDBRadioGroup5: TUniDBRadioGroup
            Left = 546
            Top = 552
            Width = 150
            Height = 76
            Hint = ''
            ShowHint = True
            DataField = 'Ambiente_REINF'
            DataSource = dsEmpresas
            Caption = 'Ambiente REINF'
            TabOrder = 34
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Produ'#231#227'o'
              'Homologa'#231#227'o')
            Values.Strings = (
              '1'
              '2')
          end
          object UniPanel3: TUniPanel
            Tag = 1
            Left = 19
            Top = 327
            Width = 560
            Height = 188
            Hint = ''
            ShowHint = True
            TabOrder = 35
            BorderStyle = ubsInset
            ShowCaption = False
            TitleVisible = True
            Title = 'Autoriza'#231#245'es para NF-e'
            Caption = 'UniPanel3'
            object UniDBMemo8: TUniDBMemo
              Left = 4
              Top = 3
              Width = 270
              Height = 150
              Hint = ''
              ShowHint = True
              DataField = 'Autorizacao_NFECNPJ'
              DataSource = dsEmpresas
              BorderStyle = ubsInset
              TabOrder = 1
              FieldLabel = 'CNPJ Autorizado'
              FieldLabelWidth = 110
            end
            object UniDBMemo9: TUniDBMemo
              Left = 280
              Top = 4
              Width = 270
              Height = 150
              Hint = ''
              ShowHint = True
              DataField = 'Autorizacao_NFECPF'
              DataSource = dsEmpresas
              BorderStyle = ubsInset
              TabOrder = 2
              FieldLabel = 'CPF Autorizado'
              FieldLabelWidth = 110
            end
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'SPED'#39's'
      object UniScrollBox8: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1243
        Height = 937
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'      config.' +
            'cls = '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1224
          935)
        ScrollHeight = 1273
        object UniPanel2: TUniPanel
          Left = 185
          Top = 31
          Width = 700
          Height = 1242
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'SPED'
          Caption = ''
          Color = clTeal
          object UniGroupBox2: TUniGroupBox
            Left = 21
            Top = 14
            Width = 658
            Height = 144
            Hint = ''
            ShowHint = True
            Caption = 'SPED FISCAL'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBRadioGroup6: TUniDBRadioGroup
              Left = 12
              Top = 19
              Width = 291
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Perfil_SPED'
              DataSource = dsEmpresas
              Caption = 'Perfil'
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'A'
                'B'
                'C')
              Columns = 3
              AutoScroll = True
              Values.Strings = (
                'A'
                'B'
                'C')
            end
            object UniDBRadioGroup7: TUniDBRadioGroup
              Left = 323
              Top = 19
              Width = 314
              Height = 75
              Hint = ''
              ShowHint = True
              DataField = 'Tipo_Atividade'
              DataSource = dsEmpresas
              Caption = 'Perfil'
              TabOrder = 2
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Industrial ou equiparado a insdustrial.'
                'Outros')
              Values.Strings = (
                '0'
                '1')
            end
            object cClassificacao_ContribIPI: TUniDBLookupComboBox
              Left = 11
              Top = 105
              Width = 630
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsContribIPI
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Classificacao_ContribIPI'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o Contrib. IPI'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
          end
          object UniGroupBox3: TUniGroupBox
            Left = 21
            Top = 176
            Width = 658
            Height = 52
            Hint = ''
            ShowHint = True
            Caption = 'SPED PIS / COFINS'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBCheckBox13: TUniDBCheckBox
              Left = 18
              Top = 19
              Width = 545
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PISCOFINS_F100'
              DataSource = dsEmpresas
              Caption = 
                'Apurar cr'#233'ditos de PIS/COFINS do bloco F100 pela Declara'#231#227'o de I' +
                'mporta'#231#227'o (DI).'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
            end
          end
          object UniGroupBox4: TUniGroupBox
            Left = 21
            Top = 243
            Width = 658
            Height = 422
            Hint = ''
            ShowHint = True
            Caption = 'SPED CONTABIL'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBRadioGroup8: TUniDBRadioGroup
              Left = 15
              Top = 19
              Width = 236
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Encerramento_Contabil'
              DataSource = dsEmpresas
              Caption = 'Perfil'
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Trimestral'
                'Anual')
              Columns = 2
              Values.Strings = (
                '0'
                '1')
            end
            object UniDBEdit21: TUniDBEdit
              Left = 295
              Top = 21
              Width = 333
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Qtde_SCP'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              InputMask.MaskChar = ' '
              InputMask.UnmaskText = True
              InputMask.RemoveWhiteSpace = True
              FieldLabel = 'Quantidade de SCP'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBEdit80: TUniDBEdit
              Left = 295
              Top = 48
              Width = 333
              Height = 25
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Natureza_Juridica'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              InputMask.MaskChar = ' '
              InputMask.UnmaskText = True
              InputMask.RemoveWhiteSpace = True
              FieldLabel = 'C'#243'digo Natureza Jur'#237'dica'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsInset
            end
            object UniDBCheckBox14: TUniDBCheckBox
              Left = 17
              Top = 82
              Width = 142
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Refis'
              DataSource = dsEmpresas
              Caption = 'Optante pelo REFIS'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox15: TUniDBCheckBox
              Left = 17
              Top = 104
              Width = 142
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Paes'
              DataSource = dsEmpresas
              Caption = 'Optante pelo PAES'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox16: TUniDBCheckBox
              Left = 17
              Top = 126
              Width = 364
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Extincao_RTT'
              DataSource = dsEmpresas
              Caption = 'Optante pela extin'#231#227'o do RTT no ano-calend'#225'rio de 2014.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBRadioGroup10: TUniDBRadioGroup
              Left = 16
              Top = 161
              Width = 381
              Height = 248
              Hint = ''
              ShowHint = True
              DataField = 'SPED_CTAPlanoRef'
              DataSource = dsEmpresas
              Caption = 'Institui'#231#227'o Resp.Manut.Plano de Contas Referencial'
              TabOrder = 7
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'PJ em Geral (L100A + L300A da ECF) '
                'PJ em Geral - Lucro Presumido (P100 + P150 da ECF) '
                'Financeiras (L100B + L300B da ECF)'#9
                'Seguradoras (L100C + L300C da ECF) '
                'Imunes e Isentas em Geral (U100A + U150A da ECF)'#9
                'Financeiras - Imunes e Isentas (U100B + U150B da ECF)'#9
                'Seguradoras - Imunes e Isentas (U100C + U150C da ECF) '
                'Entidades Fechadas Previd'#234'ncia Compl.(U100D + U150D da ECF) '
                'Partidos Pol'#237'ticos (U100E + U150E da ECF) ')
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9')
            end
            object UniDBRadioGroup11: TUniDBRadioGroup
              Left = 411
              Top = 161
              Width = 230
              Height = 248
              Hint = ''
              ShowHint = True
              DataField = 'Forma_Tributacao'
              DataSource = dsEmpresas
              Caption = 'Forma de Tributa'#231#227'o'
              TabOrder = 8
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
                  ' = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                '1 - Lucro Real'
                '2 - Lucro Real/Arbitrado'
                '3 - Lucro Presumido/Real'
                '4 - Lucro Presumido/Real/Arbitrado'
                '5 - Lucro Presumido'
                '6 - Lucro Arbitrado'
                '7 - Lucro Presumido/Arbitrado'
                '8 - Imune do IRPJ'
                '9 - Isenta do IRPJ')
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9')
            end
          end
          object UniGroupBox5: TUniGroupBox
            Left = 21
            Top = 691
            Width = 658
            Height = 548
            Hint = ''
            ShowHint = True
            Caption = 'REINF'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBRadioGroup12: TUniDBRadioGroup
              Left = 427
              Top = 56
              Width = 214
              Height = 75
              Hint = ''
              ShowHint = True
              DataField = 'Obrigada_ECD'
              DataSource = dsEmpresas
              Caption = 'Escritura'#231#227'o Cont'#225'bil Digital (ECD)'
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'N'#227'o obrigada '#224' ECD'
                'Obrigada '#224' ECD')
              Values.Strings = (
                '0'
                '1')
            end
            object UniDBRadioGroup13: TUniDBRadioGroup
              Left = 16
              Top = 56
              Width = 381
              Height = 75
              Hint = ''
              ShowHint = True
              DataField = 'Tipo_Atividade'
              DataSource = dsEmpresas
              Caption = 'Indicativo de desonera'#231#227'o da folha'
              TabOrder = 2
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CaixaSimples'#39';'#13#10'}')
              Items.Strings = (
                'N'#227'o Aplic'#225'vel'
                'Empresa enquadrada nos artigos 7'#176' a 9'#176' da Lei 12.546/2011')
              Values.Strings = (
                '0'
                '1')
            end
            object UniDBLookupComboBox17: TUniDBLookupComboBox
              Left = 15
              Top = 22
              Width = 627
              Height = 25
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsClassTrib
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsInset
              DataField = 'Classificacao_Tributaria'
              DataSource = dsEmpresas
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              Color = clWindow
              MatchFieldWidth = False
              FieldLabel = 'Classifica'#231#227'o Tribut'#225'ria'
              FieldLabelWidth = 140
              FieldLabelSeparator = ' '
              ForceSelection = True
              Style = csSimple
              OnChange = UniDBLookupComboBox2Change
            end
            object UniDBRadioGroup14: TUniDBRadioGroup
              Left = 16
              Top = 147
              Width = 381
              Height = 75
              Hint = ''
              ShowHint = True
              DataField = 'Isencao_Multa'
              DataSource = dsEmpresas
              Caption = 'Indicativo exist'#234'ncia acordo internacional p/isen'#231#227'o de multa'
              TabOrder = 4
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Sem acordo'
                'Com Acordo')
              Values.Strings = (
                '0'
                '1')
            end
            object UniGroupBox1: TUniGroupBox
              Left = 16
              Top = 241
              Width = 625
              Height = 291
              Hint = ''
              ShowHint = True
              Caption = 'Registro R100'
              TabOrder = 5
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Grupo'#39';'#13#10'}')
              object UniDBEdit81: TUniDBEdit
                Left = 8
                Top = 24
                Width = 250
                Height = 25
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'REINF_Sequencia'
                DataSource = dsEmpresas
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 1
                InputMask.MaskChar = ' '
                InputMask.UnmaskText = True
                InputMask.RemoveWhiteSpace = True
                FieldLabel = 'Sequ'#234'ncia'
                FieldLabelWidth = 120
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsInset
              end
              object UniDBEdit82: TUniDBEdit
                Left = 8
                Top = 51
                Width = 250
                Height = 25
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'REINF_iniValid'
                DataSource = dsEmpresas
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 2
                InputMask.MaskChar = ' '
                InputMask.UnmaskText = True
                InputMask.RemoveWhiteSpace = True
                FieldLabel = 'Inicio da Validade'
                FieldLabelWidth = 120
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsInset
              end
              object UniDBEdit83: TUniDBEdit
                Left = 268
                Top = 24
                Width = 250
                Height = 25
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'REINF_ModoLancamento'
                DataSource = dsEmpresas
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 3
                InputMask.MaskChar = ' '
                InputMask.UnmaskText = True
                InputMask.RemoveWhiteSpace = True
                FieldLabel = 'Modo de Lan'#231'amento'
                FieldLabelWidth = 120
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsInset
              end
              object UniDBRadioGroup15: TUniDBRadioGroup
                Left = 161
                Top = 109
                Width = 167
                Height = 75
                Hint = ''
                ShowHint = True
                DataField = 'REINF_ProcEmi'
                DataSource = dsEmpresas
                Caption = 'Aplicativo'
                TabOrder = 4
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Aplicativo do contribuinte'
                  'Aplicativo governamental')
                Values.Strings = (
                  '1'
                  '2')
              end
              object UniDBRadioGroup16: TUniDBRadioGroup
                Left = 352
                Top = 109
                Width = 115
                Height = 75
                Hint = ''
                ShowHint = True
                DataField = 'REINF_tpInsc'
                DataSource = dsEmpresas
                Caption = 'Tipo de Inscri'#231#227'o'
                TabOrder = 5
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'CNPJ '
                  'CPF')
                Values.Strings = (
                  '1'
                  '2')
              end
              object UniDBEdit84: TUniDBEdit
                Left = 268
                Top = 51
                Width = 250
                Height = 25
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'REINF_fimValid'
                DataSource = dsEmpresas
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 6
                InputMask.MaskChar = ' '
                InputMask.UnmaskText = True
                InputMask.RemoveWhiteSpace = True
                FieldLabel = 'Fim da Validade'
                FieldLabelWidth = 120
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsInset
              end
              object UniDBRadioGroup17: TUniDBRadioGroup
                Left = 10
                Top = 109
                Width = 128
                Height = 157
                Hint = ''
                ShowHint = True
                DataField = 'REINF_indSitPJ'
                DataSource = dsEmpresas
                Caption = 'Situa'#231#227'o PJ'
                TabOrder = 7
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Situa'#231#227'o Normal'
                  'Extin'#231#227'o'
                  'Fus'#227'o'
                  'Cis'#227'o'
                  'Incorpora'#231#227'o')
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
              end
              object UniDBRadioGroup18: TUniDBRadioGroup
                Left = 488
                Top = 109
                Width = 123
                Height = 75
                Hint = ''
                ShowHint = True
                DataField = 'REINF_indSitPJ'
                DataSource = dsEmpresas
                Caption = 'Org'#227'o Respos'#225'vel'
                TabOrder = 8
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  #201' EFR'
                  'N'#227'o '#233' EFR')
                Values.Strings = (
                  'S'
                  'N')
              end
              object UniDBEdit85: TUniDBEdit
                Left = 8
                Top = 78
                Width = 250
                Height = 25
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'REINF_VerProc'
                DataSource = dsEmpresas
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 9
                InputMask.MaskChar = ' '
                InputMask.UnmaskText = True
                InputMask.RemoveWhiteSpace = True
                FieldLabel = 'Vers'#227'o do Manual'
                FieldLabelWidth = 120
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsInset
              end
            end
          end
        end
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Rede / Internet'
      ParentFont = False
      object UniScrollBox3: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1243
        Height = 937
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'      config.' +
            'cls = '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1224
          935)
        ScrollHeight = 1053
        ScrollY = 118
        object pRede: TUniPanel
          Left = 82
          Top = -96
          Width = 797
          Height = 1031
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DIRETOR/RESPOS'#193'VEL'
          Caption = ''
          Color = clTeal
          object UniDBEdit78: TUniDBEdit
            Left = 20
            Top = 79
            Width = 508
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Email'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            ClearButton = True
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'E-Mail'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBCheckBox11: TUniDBCheckBox
            Left = 20
            Top = 843
            Width = 230
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Email_Autenticacao'
            DataSource = dsEmpresas
            Caption = 'Servidor requer autentica'#231#227'o'
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBCheckBox12: TUniDBCheckBox
            Left = 20
            Top = 817
            Width = 230
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Email_SSL'
            DataSource = dsEmpresas
            Caption = 'Utilizar conex'#227'o segura (SSL/TLS)'
            ParentFont = False
            Font.Height = -13
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
          end
          object UniDBMemo1: TUniDBMemo
            Left = 20
            Top = 106
            Width = 760
            Height = 93
            Hint = ''
            ShowHint = True
            DataField = 'Email_Copia'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 4
            ClearButton = True
            FieldLabel = 'E-Mail (C'#243'pia)'
            FieldLabelWidth = 120
          end
          object UniDBEdit74: TUniDBEdit
            Left = 20
            Top = 25
            Width = 508
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Email_SMTP'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            ClearButton = True
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'E-Mail'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit75: TUniDBEdit
            Left = 534
            Top = 25
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Email_Porta'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            ClearButton = True
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Porta'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit76: TUniDBEdit
            Left = 20
            Top = 52
            Width = 508
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Email_ID'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            ClearButton = True
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Usu'#225'rio (ID)'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit77: TUniDBEdit
            Left = 534
            Top = 52
            Width = 250
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Email_Senha'
            DataSource = dsEmpresas
            PasswordChar = #186
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            ClearButton = True
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Senha'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBMemo2: TUniDBMemo
            Left = 20
            Top = 201
            Width = 760
            Height = 98
            Hint = ''
            ShowHint = True
            DataField = 'Email_MsgEnvioNFE'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 9
            ClearButton = True
            FieldLabel = 'Msg envio NF-e'
            FieldLabelWidth = 120
          end
          object UniDBMemo3: TUniDBMemo
            Left = 20
            Top = 301
            Width = 760
            Height = 98
            Hint = ''
            ShowHint = True
            DataField = 'Email_MsgCancelamento'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 10
            ClearButton = True
            FieldLabel = 'Msg envio cancel. NF-e'
            FieldLabelWidth = 120
          end
          object UniDBMemo4: TUniDBMemo
            Left = 20
            Top = 401
            Width = 760
            Height = 98
            Hint = ''
            ShowHint = True
            DataField = 'Email_MsgEnvioCCE'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 11
            ClearButton = True
            FieldLabel = 'Msg envio CC-e'
            FieldLabelWidth = 120
          end
          object UniDBMemo5: TUniDBMemo
            Left = 20
            Top = 501
            Width = 760
            Height = 98
            Hint = ''
            ShowHint = True
            DataField = 'Email_MsgOrcamento'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 12
            ClearButton = True
            FieldLabel = 'Msg envio or'#231'amentos'
            FieldLabelWidth = 120
          end
          object UniDBMemo6: TUniDBMemo
            Left = 20
            Top = 601
            Width = 760
            Height = 98
            Hint = ''
            ShowHint = True
            DataField = 'Email_MsgBoleto'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 13
            ClearButton = True
            FieldLabel = 'Msg envio Boletos'
            FieldLabelWidth = 120
          end
          object UniDBEdit79: TUniDBEdit
            Left = 20
            Top = 701
            Width = 760
            Height = 25
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            DataField = 'Site'
            DataSource = dsEmpresas
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 14
            ClearButton = True
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Site'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBComboBox1: TUniDBComboBox
            Left = 20
            Top = 728
            Width = 760
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Email_Metodo'
            DataSource = dsEmpresas
            Items.Strings = (
              'sslvSSLv2'
              'sslvSSLv23'
              'sslvSSLv3'
              'sslvTLSv1')
            TabOrder = 15
            FieldLabel = 'SSL Metodo'
            FieldLabelWidth = 120
            ClearButton = True
            IconItems = <>
          end
          object UniDBComboBox2: TUniDBComboBox
            Left = 20
            Top = 755
            Width = 760
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'UF_WebService'
            DataSource = dsEmpresas
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AP'
              'BA'
              'BA3'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'PR3'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'SP3'
              'TO'
              'SCAN'
              'SVAN'
              'SVRS'
              'SVC-AN'
              'SVC-RS')
            TabOrder = 16
            FieldLabel = 'Web Service (NF-e)'
            FieldLabelWidth = 120
            ClearButton = True
            IconItems = <>
          end
          object UniDBComboBox3: TUniDBComboBox
            Left = 21
            Top = 782
            Width = 760
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'UF_WebServiceManifesto'
            DataSource = dsEmpresas
            Items.Strings = (
              'AC'
              'AL'
              'AM'
              'AN'
              'AP'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MG'
              'MS'
              'MT'
              'PA'
              'PB'
              'PE'
              'PI'
              'PR'
              'RJ'
              'RN'
              'RO'
              'RR'
              'RS'
              'SC'
              'SE'
              'SP'
              'TO'
              'SCAN'
              'SVAN'
              'SVRS')
            TabOrder = 17
            FieldLabel = 'Web Service (Manifesto)'
            FieldLabelWidth = 120
            ClearButton = True
            IconItems = <>
          end
          object UniDBMemo7: TUniDBMemo
            Left = 20
            Top = 880
            Width = 664
            Height = 98
            Hint = ''
            ShowHint = True
            DataField = 'Certificado_Digital'
            DataSource = dsEmpresas
            BorderStyle = ubsInset
            TabOrder = 18
            ClearButton = True
            FieldLabel = 'Certificado Digital'
            FieldLabelWidth = 120
          end
          object UniDBDateTimePicker7: TUniDBDateTimePicker
            Left = 20
            Top = 980
            Width = 255
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_Certificado'
            DataSource = dsEmpresas
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 19
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            ClearButton = True
            BorderStyle = ubsInset
            FieldLabel = 'Vencimento Certificado'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object UniButton2: TUniButton
            Left = 690
            Top = 880
            Width = 90
            Height = 98
            Hint = ''
            ShowHint = True
            Caption = 'Certificado'
            TabOrder = 20
            Scale = bbsMedium
            IconAlign = iaTop
            IconCls = 'search'
            OnClick = UniButton2Click
          end
          object UniButton3: TUniButton
            Left = 690
            Top = 810
            Width = 90
            Height = 56
            Hint = ''
            ShowHint = True
            Caption = 'Testar E-Mail'
            TabOrder = 21
            Scale = bbsMedium
            IconAlign = iaTop
            IconCls = 'settings'
            OnClick = UniButton3Click
          end
        end
      end
    end
  end
  object BarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1251
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
      Width = 143
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsEmpresas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 140
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      Left = 181
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 222
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      Left = 304
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bSalvar: TUniSpeedButton
      Left = 263
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bSalvarClick
    end
    object bFechar: TUniSpeedButton
      Left = 345
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 112
    Top = 88
  end
  object dsMuni: TDataSource
    DataSet = Municipios
    Left = 112
    Top = 136
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 112
    Top = 192
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 112
    Top = 240
  end
  object dsBeneficio: TDataSource
    DataSet = Beneficio
    Left = 112
    Top = 288
  end
  object dsQualificacao: TDataSource
    DataSet = Qualificacoes
    Left = 112
    Top = 344
  end
  object dsModelos: TDataSource
    DataSet = Modelos
    Left = 112
    Top = 400
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 52
    Top = 663
  end
  object EmailMSG: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 67
    Top = 608
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':465'
    MaxLineAction = maException
    Port = 465
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 131
    Top = 608
  end
  object SMTP: TIdSMTP
    IOHandler = SSLSocket
    AuthType = satNone
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 19
    Top = 608
  end
  object dsContribIPI: TDataSource
    DataSet = ContribIPI
    Left = 112
    Top = 456
  end
  object Empresas: TFDQuery
    BeforePost = EmpresasBeforePost
    BeforeDelete = EmpresasBeforeDelete
    AfterScroll = EmpresasAfterScroll
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvUpdateMode, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Empresas')
    Left = 30
    Top = 88
  end
  object Municipios: TFDQuery
    Filtered = True
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evRecordCountMode, evLiveWindowParanoic]
    FetchOptions.Mode = fmAll
    FetchOptions.RowsetSize = 250
    FetchOptions.RecordCountMode = cmFetched
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Municipios')
    Left = 28
    Top = 136
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Estados')
    Left = 28
    Top = 192
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Paises')
    Left = 28
    Top = 239
  end
  object Beneficio: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM BeneficioFiscal')
    Left = 28
    Top = 287
  end
  object Qualificacoes: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Qualificacoes')
    Left = 30
    Top = 344
  end
  object Modelos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModelosDocumentos')
    Left = 32
    Top = 398
  end
  object ContribIPI: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ContribuicaoIPI')
    Left = 32
    Top = 454
  end
  object ClassTrib: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ClassificacaoTributaria')
    Left = 32
    Top = 510
  end
  object dsClassTrib: TDataSource
    DataSet = ClassTrib
    Left = 112
    Top = 512
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 15
    Left = 132
    Top = 667
  end
end
