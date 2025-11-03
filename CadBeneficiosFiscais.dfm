object fCadBeneficiosFiscais: TfCadBeneficiosFiscais
  Left = 0
  Top = 0
  Width = 1166
  Height = 783
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1166
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
      DataSource = dsBenificio
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
    Width = 1166
    Height = 748
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1158
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clNone
        object cPesquisa: TUniEdit
          Left = 0
          Top = 0
          Width = 520
          Height = 27
          Hint = ''
          BorderStyle = ubsNone
          Text = ''
          Align = alLeft
          TabOrder = 1
          EmptyText = 'Pesquisar'
          OnKeyDown = cPesquisaKeyDown
        end
        object bPesquisa: TUniSpeedButton
          Left = 520
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
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1158
        Height = 693
        Hint = ''
        HeaderTitleAlign = taCenter
        DataSource = dsBenificio
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 43
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 424
          end
          item
            FieldName = 'Codigo_Receita'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Receita'
            Width = 91
          end
          item
            FieldName = 'Estado'
            Title.Alignment = taCenter
            Title.Caption = 'Estado'
            Width = 42
            Alignment = taCenter
          end>
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Benef'#237'cios'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1158
        Height = 720
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1156
          718)
        ScrollHeight = 617
        object pFicha: TUniPanel
          Left = 137
          Top = 16
          Width = 556
          Height = 601
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
            Left = 22
            Top = 13
            Width = 91
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsBenificio
            TabOrder = 1
            FieldLabel = 'C'#243'digo '
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            OnChangeValue = cCodigoChangeValue
          end
          object cNome: TUniDBEdit
            Left = 22
            Top = 69
            Width = 370
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsBenificio
            TabOrder = 2
            FieldLabel = 'Nome'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object GroupBox1: TUniGroupBox
            Left = 418
            Top = 21
            Width = 119
            Height = 215
            Hint = ''
            ShowHint = True
            Caption = 'BC ICMS(Entrada)'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cBCICMSEnt_FOB: TUniDBCheckBox
              Left = 11
              Top = 20
              Width = 49
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_FOB'
              DataSource = dsBenificio
              Caption = 'FOB'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_Frete: TUniDBCheckBox
              Left = 11
              Top = 43
              Width = 58
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_Frete'
              DataSource = dsBenificio
              Caption = 'Frete'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_Seguro: TUniDBCheckBox
              Left = 11
              Top = 66
              Width = 67
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_Seguro'
              DataSource = dsBenificio
              Caption = 'Seguro'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_II: TUniDBCheckBox
              Left = 11
              Top = 89
              Width = 36
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_II'
              DataSource = dsBenificio
              Caption = 'II'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_IPI: TUniDBCheckBox
              Left = 11
              Top = 112
              Width = 42
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_IPI'
              DataSource = dsBenificio
              Caption = 'IPI'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_PIS: TUniDBCheckBox
              Left = 11
              Top = 135
              Width = 44
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_PIS'
              DataSource = dsBenificio
              Caption = 'PIS'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_COFINS: TUniDBCheckBox
              Left = 11
              Top = 158
              Width = 61
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_COFINS'
              DataSource = dsBenificio
              Caption = 'COFINS'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBCICMSEnt_Despesas: TUniDBCheckBox
              Left = 11
              Top = 181
              Width = 68
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSEnt_Despesas'
              DataSource = dsBenificio
              Caption = 'Despesas'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cVencimento_ICMS: TUniDBEdit
            Left = 22
            Top = 242
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_ICMS'
            DataSource = dsBenificio
            TabOrder = 4
            FieldLabel = 'Vencimento ICMS Operacional'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cEstado: TUniDBLookupComboBox
            Left = 22
            Top = 125
            Width = 370
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'UF;Nome'
            ListSource = dsEstados
            KeyField = 'UF'
            ListFieldIndex = 1
            DataField = 'Estado'
            DataSource = dsBenificio
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            OnChangeValue = cEstadoChangeValue
          end
          object cReducaoICMS_Entrada: TUniDBEdit
            Left = 22
            Top = 310
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'ReducaoICMS_Entrada'
            DataSource = dsBenificio
            TabOrder = 6
            FieldLabel = 'Redu'#231#227'o BC ICMS Entrada (%)'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cReducaoICMS_Saida: TUniDBEdit
            Left = 22
            Top = 344
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'ReducaoICMS_Saida'
            DataSource = dsBenificio
            TabOrder = 7
            FieldLabel = 'Redu'#231#227'o BC ICMS Sa'#237'da (%)'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cICMS_Diferido: TUniDBCheckBox
            Left = 241
            Top = 46
            Width = 89
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'ICMS_Diferido'
            DataSource = dsBenificio
            Caption = 'ICMS Diferido'
            TabOrder = 8
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVencimento_ICMSSub: TUniDBEdit
            Left = 22
            Top = 276
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_ICMSSub'
            DataSource = dsBenificio
            TabOrder = 9
            FieldLabel = 'Vencimento ICMS Substitutivo'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cReducao_AliquotaICMS: TUniDBEdit
            Left = 22
            Top = 378
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Reducao_AliquotaICMS'
            DataSource = dsBenificio
            TabOrder = 10
            FieldLabel = 'Redu'#231#227'o Aliquota ICMS (%)'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cInativa: TUniDBCheckBox
            Left = 124
            Top = 46
            Width = 68
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Inativa'
            DataSource = dsBenificio
            Caption = 'Inativa'
            TabOrder = 11
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cCodigo_Receita: TUniDBLookupComboBox
            Left = 22
            Top = 181
            Width = 370
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCodigosRFBSPED
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Codigo_Receita'
            DataSource = dsBenificio
            AnyMatch = True
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'C'#243'digo da Receita'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            NormalizeString = True
          end
          object cCaucao_RetBANDES: TUniDBEdit
            Left = 22
            Top = 412
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Caucao_RetBANDES'
            DataSource = dsBenificio
            TabOrder = 13
            FieldLabel = 'Cau'#231#227'o Reten'#231#227'o BANDES'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cValor_TaxaCartorio: TUniDBEdit
            Left = 22
            Top = 480
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_TaxaCartorio'
            DataSource = dsBenificio
            TabOrder = 14
            FieldLabel = 'Valor Taxa Registro Contrato Cart'#243'rio'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cPercentual_TaxaCartorio: TUniDBEdit
            Left = 22
            Top = 514
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Percentual_TaxaCartorio'
            DataSource = dsBenificio
            TabOrder = 15
            FieldLabel = 'Percentual Registro Contrato Cart'#243'rio'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cTaxa_LeilaoBANDES: TUniDBEdit
            Left = 22
            Top = 446
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Taxa_LeilaoBANDES'
            DataSource = dsBenificio
            TabOrder = 16
            FieldLabel = 'Taxa Leil'#227'o BANDES'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cLimite_Contrato: TUniDBEdit
            Left = 22
            Top = 548
            Width = 370
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Limite_Contrato'
            DataSource = dsBenificio
            TabOrder = 17
            FieldLabel = 'Limite Valor Taxa Contrato'
            FieldLabelWidth = 230
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniGroupBox1: TUniGroupBox
            Left = 418
            Top = 254
            Width = 119
            Height = 215
            Hint = ''
            ShowHint = True
            Caption = 'BC ICMS(Sa'#237'da)'
            TabOrder = 18
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 11
              Top = 20
              Width = 49
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_FOB'
              DataSource = dsBenificio
              Caption = 'FOB'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 11
              Top = 43
              Width = 58
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_Frete'
              DataSource = dsBenificio
              Caption = 'Frete'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 11
              Top = 66
              Width = 67
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_Seguro'
              DataSource = dsBenificio
              Caption = 'Seguro'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 11
              Top = 89
              Width = 36
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_II'
              DataSource = dsBenificio
              Caption = 'II'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 11
              Top = 112
              Width = 42
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_IPI'
              DataSource = dsBenificio
              Caption = 'IPI'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 11
              Top = 135
              Width = 44
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_PIS'
              DataSource = dsBenificio
              Caption = 'PIS'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 11
              Top = 158
              Width = 61
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_COFINS'
              DataSource = dsBenificio
              Caption = 'COFINS'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox8: TUniDBCheckBox
              Left = 11
              Top = 181
              Width = 68
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'BCICMSSai_Despesas'
              DataSource = dsBenificio
              Caption = 'Despesas'
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
    object TabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Tabela ICMS Recuperar'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1158
        Height = 720
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1156
          718)
        ScrollHeight = 357
        object pFicha2: TUniPanel
          Left = 127
          Top = 26
          Width = 529
          Height = 331
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
          object pFicha3: TUniContainerPanel
            Left = 10
            Top = 9
            Width = 509
            Height = 277
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentColor = False
            TabOrder = 1
            object cBase_Calculo: TUniDBRadioGroup
              Left = 14
              Top = 100
              Width = 276
              Height = 117
              Hint = ''
              ShowHint = True
              DataField = 'Base_Calculo'
              DataSource = dsRecuperarICMS
              Caption = 'Base de Calculo '
              TabOrder = 3
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'      config.' +
                  'cls = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Valor Total da Nota Fiscal'
                'Valor do ICMS'
                'Valor da Base de Calculo do ICMS')
              Values.Strings = (
                'TOTALNF'
                'VLRICMS'
                'BCICMS')
            end
            object cAliquota_Recuperar: TUniDBEdit
              Left = 14
              Top = 52
              Width = 276
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_Recuperar'
              DataSource = dsRecuperarICMS
              TabOrder = 2
              FieldLabel = 'Al'#237'quota de ICMS a Recuperar'
              FieldLabelWidth = 190
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cAliquota_ICMS: TUniDBEdit
              Left = 14
              Top = 14
              Width = 276
              Height = 25
              Hint = ''
              ShowHint = True
              DataField = 'Aliquota_ICMS'
              DataSource = dsRecuperarICMS
              TabOrder = 1
              FieldLabel = 'Al'#237'quota de ICMS na Sa'#237'da'
              FieldLabelWidth = 190
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object gRetorno: TUniDBGrid
              Left = 300
              Top = 14
              Width = 194
              Height = 250
              Hint = ''
              ShowHint = True
              DataSource = dsRecuperarICMS
              Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
              WebOptions.Paged = False
              LoadMask.Message = 'Loading data...'
              ForceFit = True
              TabOrder = 4
              Columns = <
                item
                  FieldName = 'Aliquota_ICMS'
                  Title.Alignment = taCenter
                  Title.Caption = 'ICMS'
                  Width = 74
                end
                item
                  FieldName = 'Aliquota_Recuperar'
                  Title.Alignment = taCenter
                  Title.Caption = 'Recuperar'
                  Width = 80
                end>
            end
          end
          object PanelNav: TUniPanel
            Left = 0
            Top = 296
            Width = 529
            Height = 35
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Align = alBottom
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'BarraPrincipal'#39';'#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = clGray
            object Navega2: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 143
              Height = 35
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dsRecuperarICMS
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bAddAliq: TUniSpeedButton
              Left = 140
              Top = 0
              Width = 35
              Height = 35
              Hint = 'Adicionar novo registro.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 0
              TabOrder = 2
              OnClick = bAddAliqClick
            end
            object bEdiAliq: TUniSpeedButton
              Left = 175
              Top = 0
              Width = 35
              Height = 35
              Hint = 'Editar registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 1
              TabOrder = 3
              OnClick = bEdiAliqClick
            end
            object bExcAliq: TUniSpeedButton
              Left = 210
              Top = 0
              Width = 35
              Height = 35
              Hint = 'Excluir registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 2
              TabOrder = 4
              OnClick = bExcAliqClick
            end
            object bCanAliq: TUniSpeedButton
              Left = 280
              Top = 0
              Width = 35
              Height = 35
              Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 3
              TabOrder = 6
              OnClick = bCanAliqClick
            end
            object bGraAliq: TUniSpeedButton
              Left = 245
              Top = 0
              Width = 35
              Height = 35
              Hint = 'Salva o registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 4
              TabOrder = 5
              OnClick = bGraAliqClick
            end
          end
        end
      end
    end
  end
  object Beneficio: TFDQuery
    BeforePost = BeneficioBeforePost
    BeforeDelete = BeneficioBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from BeneficioFiscal')
    Left = 48
    Top = 134
  end
  object dsBenificio: TDataSource
    DataSet = Beneficio
    Left = 48
    Top = 182
  end
  object RecuperarICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from RecuperarICMS')
    Left = 48
    Top = 230
    object RecuperarICMSAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      Origin = 'Aliquota_ICMS'
      DisplayFormat = ',##0.00%'
    end
    object RecuperarICMSAliquota_Recuperar: TFloatField
      FieldName = 'Aliquota_Recuperar'
      Origin = 'Aliquota_Recuperar'
      DisplayFormat = ',##0.00%'
    end
    object RecuperarICMSRegistro: TSmallintField
      FieldName = 'Registro'
      Origin = 'Registro'
    end
    object RecuperarICMSBeneficio: TSmallintField
      FieldName = 'Beneficio'
      Origin = 'Beneficio'
    end
    object RecuperarICMSBase_Calculo: TStringField
      FieldName = 'Base_Calculo'
      Origin = 'Base_Calculo'
      Size = 7
    end
  end
  object dsRecuperarICMS: TDataSource
    DataSet = RecuperarICMS
    Left = 48
    Top = 278
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Estados')
    Left = 48
    Top = 326
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 48
    Top = 374
  end
  object CodigosRFBSPED: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Estados')
    Left = 48
    Top = 422
  end
  object dsCodigosRFBSPED: TDataSource
    DataSet = CodigosRFBSPED
    Left = 48
    Top = 470
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 44
    Top = 75
  end
end
