object fCadModalidadesImportacao: TfCadModalidadesImportacao
  Left = 0
  Top = 0
  Width = 1348
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1348
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 0
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
      DataSource = dsModal
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
      Hint = 'Adicionar novo registro.'
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
      Hint = 'Editar registro corrente.'
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
      Hint = 'Excluir registro corrente.'
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
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      Left = 263
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bGravarClick
    end
    object bFechar: TUniSpeedButton
      Left = 345
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1348
    Height = 966
    Hint = ''
    ActivePage = aDados
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    ExplicitWidth = 1288
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object Grade: TUniDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1334
        Height = 932
        Hint = ''
        DataSource = dsModal
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsNone
        Align = alClient
        TabOrder = 0
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 84
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 584
          end
          item
            FieldName = 'CentroCusto'
            Title.Alignment = taCenter
            Title.Caption = 'Centro de Custos'
            Title.Font.Style = [fsBold]
            Width = 112
            Alignment = taCenter
          end
          item
            FieldName = 'Documento'
            Title.Alignment = taCenter
            Title.Caption = 'Documento'
            Title.Font.Style = [fsBold]
            Width = 109
            Alignment = taCenter
          end>
      end
    end
    object aDados: TUniTabSheet
      Hint = ''
      Caption = 'Modalidade de Importa'#231#227'o / Exporta'#231#227'o'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1340
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 1280
        ExplicitHeight = 1772
        DesignSize = (
          1338
          936)
        ScrollHeight = 786
        object pFicha: TUniPanel
          Left = 127
          Top = 11
          Width = 1161
          Height = 775
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object cCodigo: TUniDBEdit
            Left = 10
            Top = 10
            Width = 85
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsModal
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cDescricao: TUniDBEdit
            Left = 101
            Top = 10
            Width = 540
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsModal
            TabOrder = 2
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cApuracao_PISCOFINS: TUniDBCheckBox
            Left = 656
            Top = 41
            Width = 117
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Apuracao_PISCOFINS'
            DataSource = dsModal
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Apura PIS/COFINS'
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cExige_Cliente: TUniDBCheckBox
            Left = 791
            Top = 41
            Width = 117
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Exige_Cliente'
            DataSource = dsModal
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Cliente obrigat'#243'rio'
            TabOrder = 4
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniGroupBox1: TUniGroupBox
            Left = 10
            Top = 72
            Width = 566
            Height = 689
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metriza'#231#227'o Financeira para Importa'#231#227'o de DI'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBLookupComboBox1: TUniDBLookupComboBox
              Left = 12
              Top = 19
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsDocumentos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Documento'
              DataSource = dsModal
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox2: TUniDBLookupComboBox
              Left = 12
              Top = 74
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Nome'
              ListSource = dsCentroCusto
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'CentroCusto'
              DataSource = dsModal
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox3: TUniDBLookupComboBox
              Left = 12
              Top = 129
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Nome'
              ListSource = dsDestinatarios
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Destinatario'
              DataSource = dsModal
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox4: TUniDBLookupComboBox
              Left = 12
              Top = 294
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_II'
              DataSource = dsModal
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (II)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox5: TUniDBLookupComboBox
              Left = 12
              Top = 349
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_IPI'
              DataSource = dsModal
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (IPI)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox6: TUniDBLookupComboBox
              Left = 12
              Top = 404
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_PIS'
              DataSource = dsModal
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (PIS)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox7: TUniDBLookupComboBox
              Left = 12
              Top = 459
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_COFINS'
              DataSource = dsModal
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (COFINS)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox8: TUniDBLookupComboBox
              Left = 12
              Top = 514
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_TaxaSISCOMEX'
              DataSource = dsModal
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (Taxa SISCOMEX)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox9: TUniDBLookupComboBox
              Left = 12
              Top = 569
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_ANTIDUMPING'
              DataSource = dsModal
              TabOrder = 9
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (ANTIDUMPING)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox10: TUniDBLookupComboBox
              Left = 12
              Top = 184
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_DifPIS'
              DataSource = dsModal
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (Difer.PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox11: TUniDBLookupComboBox
              Left = 12
              Top = 239
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_DifCOFINS'
              DataSource = dsModal
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o (Difer.COFINS)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox12: TUniDBLookupComboBox
              Left = 12
              Top = 624
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_AFRMM'
              DataSource = dsModal
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Classifica'#231#227'o Financeira AFRMM'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object UniGroupBox2: TUniGroupBox
            Left = 582
            Top = 72
            Width = 566
            Height = 689
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metriza'#231#227'o Contabil'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBLookupComboBox16: TUniDBLookupComboBox
              Left = 3
              Top = 129
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Cli_Devolucao'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Clientes (Devolu'#231#227'o)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox17: TUniDBLookupComboBox
              Left = 3
              Top = 184
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Forn_Passivo'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Fornecedores (Passivo)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox18: TUniDBLookupComboBox
              Left = 3
              Top = 239
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Forn_Adiantamento'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Fornecedores (Adiantamento)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox19: TUniDBLookupComboBox
              Left = 3
              Top = 294
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Forn_Devolucao'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Fornecedores (Devolu'#231#227'o)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox20: TUniDBLookupComboBox
              Left = 3
              Top = 349
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Proc_Despesas'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Processos (Despesas)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox21: TUniDBLookupComboBox
              Left = 3
              Top = 404
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Proc_Impostos'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Processos (Impostos)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox22: TUniDBLookupComboBox
              Left = 3
              Top = 19
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              ClearButton = True
              DataField = 'Conta_Cli_Ativo'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Clientes (Ativo)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              NormalizeString = True
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox23: TUniDBLookupComboBox
              Left = 3
              Top = 74
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Cli_Adiantamento'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Clientes (Adiantamento)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object UniDBLookupComboBox24: TUniDBLookupComboBox
              Left = 3
              Top = 459
              Width = 540
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSingle
              DataField = 'Conta_Proc_Adiantamento'
              DataSource = dsModal
              AnyMatch = True
              TabOrder = 9
              Color = clWindow
              FieldLabel = 'Processos (Adiantamento)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 927
            Top = 41
            Width = 138
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Processo'
            DataSource = dsModal
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Referente a Processo'
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object Modal: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ModalidadeImportacao')
    Left = 48
    Top = 102
  end
  object dsModal: TDataSource
    DataSet = Modal
    Left = 50
    Top = 150
  end
  object Plano: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PlanoContas')
    Left = 48
    Top = 206
  end
  object dsPlano: TDataSource
    DataSet = Plano
    Left = 50
    Top = 254
  end
  object CentroCusto: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PlanoFinanceiro')
    Left = 48
    Top = 310
  end
  object dsCentroCusto: TDataSource
    DataSet = CentroCusto
    Left = 50
    Top = 358
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from PlanoFinanceiro')
    Left = 48
    Top = 414
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 50
    Top = 462
  end
  object Documentos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from TipoDocumento')
    Left = 48
    Top = 518
  end
  object dsDocumentos: TDataSource
    DataSet = Documentos
    Left = 50
    Top = 566
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 428
    Top = 3
  end
end



