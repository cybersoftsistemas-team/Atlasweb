object fCadDestinatarios: TfCadDestinatarios
  Left = 0
  Top = 0
  Width = 1217
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1217
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
      DataSource = dsDestinatarios
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
    object bSalvar: TUniSpeedButton
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
      OnClick = bSalvarClick
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
    Width = 1217
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 1
    ScreenMask.Message = 'AGUARDE. . .'
    ScreenMask.Target = Owner
    ScreenMask.Color = clRed
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Aguarde por favor. . .'
      ScreenMask.Target = aLista
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1209
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
          ParentFont = False
          Font.Color = cl3DDkShadow
          Align = alLeft
          TabOrder = 1
          EmptyText = 'Pesquisar'
          ClearButton = True
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
        Width = 1209
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsDestinatarios
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.PageSize = 50
        WebOptions.FetchAll = True
        LoadMask.WaitData = True
        LoadMask.Message = 'Carregando dados...'
        LoadMask.Color = clBtnFace
        RowHeight = 24
        ForceFit = True
        BorderStyle = ubsNone
        TrackOver = False
        Align = alClient
        Font.Height = -16
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        Summary.Enabled = True
        Summary.GrandTotal = True
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Title.Font.Style = [fsBold]
            Width = 68
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Desativado'
            Title.Alignment = taCenter
            Title.Caption = 'Desat'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Style = [fsBold]
            Width = 419
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Style = [fsBold]
            Width = 40
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Telefone1'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone1'
            Title.Font.Style = [fsBold]
            Width = 140
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Email'
            Title.Alignment = taCenter
            Title.Caption = 'Email'
            Title.Font.Style = [fsBold]
            Width = 261
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Contato'
            Title.Alignment = taCenter
            Title.Caption = 'Contato'
            Title.Font.Style = [fsBold]
            Width = 167
            Font.Name = 'Calibri'
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Caption = 'Dados Basicos'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1190
          936)
        ScrollHeight = 980
        ScrollY = 44
        object pFicha1: TUniPanel
          Left = 235
          Top = -24
          Width = 843
          Height = 960
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}'#13#10)
          ScreenMask.Color = clBlack
          ScreenMask.Opacity = 1.000000000000000000
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'Dados Basicos'
          Caption = ''
          Color = clTeal
          ParentAlignmentControl = False
          object cCodigo: TUniDBEdit
            Left = 23
            Top = 27
            Width = 135
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            OnChangeValue = cCodigoChangeValue
          end
          object cNome: TUniDBEdit
            Left = 23
            Top = 82
            Width = 540
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Nome'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNome_Fantasia: TUniDBEdit
            Left = 23
            Top = 137
            Width = 540
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Fantasia'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Nome Fantasia'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cRua: TUniDBEdit
            Left = 294
            Top = 305
            Width = 268
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Rua'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Rua'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cRua_Numero: TUniDBEdit
            Left = 23
            Top = 361
            Width = 160
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Rua_Numero'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'N'#250'mero'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cComplemento: TUniDBEdit
            Left = 189
            Top = 361
            Width = 373
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Complemento'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Complemento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cBairro: TUniDBEdit
            Left = 23
            Top = 305
            Width = 265
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Bairro'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Bairro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cMunicipio: TUniDBLookupComboBox
            Left = 157
            Top = 249
            Width = 405
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsMunicipios
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Municipio'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Munic'#237'pio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cEstado: TUniDBLookupComboBox
            Left = 295
            Top = 193
            Width = 267
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsEstados
            KeyField = 'UF'
            ListFieldIndex = 0
            DataField = 'Estado'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            OnChange = cEstadoChange
          end
          object cCEP: TUniDBEdit
            Left = 23
            Top = 249
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'CEP'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 10
            FieldLabel = 'CEP'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cTelefone1: TUniDBEdit
            Left = 256
            Top = 417
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Telefone1'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 11
            FieldLabel = 'Telefone'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cTelefone2: TUniDBEdit
            Left = 412
            Top = 417
            Width = 150
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Telefone2'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 12
            FieldLabel = 'Telefone'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cContato: TUniDBEdit
            Left = 23
            Top = 417
            Width = 227
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Contato'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 13
            FieldLabel = 'Contato'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cData_Cadastro: TUniDBDateTimePicker
            Left = 164
            Top = 24
            Width = 165
            Height = 58
            Hint = ''
            ShowHint = True
            DataField = 'Data_Cadastro'
            DataSource = dsDestinatarios
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 14
            ParentFont = False
            Font.Style = [fsBold]
            FieldLabel = 'Data do Cadastro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object gPerfil: TUniGroupBox
            Left = 605
            Top = 11
            Width = 216
            Height = 386
            Hint = ''
            ShowHint = True
            Caption = 'Perfil / Caracter'#237'sticas'
            TabOrder = 15
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}'#13#10)
            object cIsento: TUniDBCheckBox
              Left = 13
              Top = 41
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Isento'
              DataSource = dsDestinatarios
              Caption = 'Isento de IE'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 0
              FieldLabelSeparator = ' '
            end
            object cAtivo: TUniDBCheckBox
              Left = 13
              Top = 19
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Desativado'
              DataSource = dsDestinatarios
              Caption = 'Desativado'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 0
              FieldLabelSeparator = ' '
            end
            object cSimples_Nacional: TUniDBCheckBox
              Left = 13
              Top = 63
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Simples_Nacional'
              DataSource = dsDestinatarios
              Caption = 'Simples_Nacional'
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cZona_Franca: TUniDBCheckBox
              Left = 13
              Top = 85
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Zona_Franca'
              DataSource = dsDestinatarios
              Caption = 'Zona_Franca'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cConsumidor_Final: TUniDBCheckBox
              Left = 13
              Top = 107
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Consumidor_Final'
              DataSource = dsDestinatarios
              Caption = 'Consumidor_Final'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cMEI: TUniDBCheckBox
              Left = 13
              Top = 151
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'MEI'
              DataSource = dsDestinatarios
              Caption = 'MEI'
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cInscricaoST: TUniDBCheckBox
              Left = 13
              Top = 129
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'InscricaoST'
              DataSource = dsDestinatarios
              Caption = 'Possui Inscri'#231#227'o de ST'
              ParentFont = False
              Font.Height = -13
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCliente: TUniDBCheckBox
              Left = 13
              Top = 217
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Cliente'
              DataSource = dsDestinatarios
              Caption = 'Cliente'
              ParentFont = False
              Font.Height = -13
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFornecedor: TUniDBCheckBox
              Left = 13
              Top = 239
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Fornecedor'
              DataSource = dsDestinatarios
              Caption = 'Fornecedor'
              ParentFont = False
              Font.Height = -13
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cOrgao_Publico: TUniDBCheckBox
              Left = 13
              Top = 261
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Orgao_Publico'
              DataSource = dsDestinatarios
              Caption = 'Orgao_Publico'
              ParentFont = False
              Font.Height = -13
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              OnClick = cOrgao_PublicoClick
            end
            object cTransportador: TUniDBCheckBox
              Left = 13
              Top = 195
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Transportador'
              DataSource = dsDestinatarios
              Caption = 'Transportador'
              ParentFont = False
              Font.Height = -13
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFabricante: TUniDBCheckBox
              Left = 13
              Top = 283
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Fabricante'
              DataSource = dsDestinatarios
              Caption = 'Fabricante'
              ParentFont = False
              Font.Height = -13
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cRepresentante: TUniDBCheckBox
              Left = 13
              Top = 305
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Representante'
              DataSource = dsDestinatarios
              Caption = 'Representante'
              ParentFont = False
              Font.Height = -13
              TabOrder = 13
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cConsignacao: TUniDBCheckBox
              Left = 13
              Top = 327
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Consignacao'
              DataSource = dsDestinatarios
              Caption = 'Cliente de Consigna'#231#227'o'
              ParentFont = False
              Font.Height = -13
              TabOrder = 14
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 13
              Top = 173
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Micro_Empresa'
              DataSource = dsDestinatarios
              Caption = 'Micro Empresa'
              ParentFont = False
              Font.Height = -13
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 13
              Top = 349
              Width = 190
              Height = 21
              Hint = ''
              ShowHint = True
              DataField = 'Exportador'
              DataSource = dsDestinatarios
              Caption = 'Exportador'
              ParentFont = False
              Font.Height = -13
              TabOrder = 16
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object gReg: TUniGroupBox
            Left = 23
            Top = 555
            Width = 798
            Height = 261
            Hint = ''
            ShowHint = True
            Caption = 'Registros / Inscri'#231#245'es'
            TabOrder = 16
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cCNPJ: TUniDBEdit
              Left = 17
              Top = 20
              Width = 192
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CNPJ'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'CNPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cCPF: TUniDBEdit
              Left = 17
              Top = 76
              Width = 192
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CPF'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'CPF'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cRG: TUniDBEdit
              Left = 215
              Top = 76
              Width = 192
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'RG'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'RG'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cInscricao_Estadual: TUniDBEdit
              Left = 215
              Top = 20
              Width = 192
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Inscricao_Estadual'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Inscri'#231#227'o Estadual'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cInscricao_Municipal: TUniDBEdit
              Left = 413
              Top = 20
              Width = 200
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Inscricao_Municipal'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Inscri'#231#227'o Municipal'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cSUFRAMA: TUniDBEdit
              Left = 619
              Top = 20
              Width = 164
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'SUFRAMA'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 6
              FieldLabel = 'SUFRAMA'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cPassaporte: TUniDBEdit
              Left = 413
              Top = 76
              Width = 200
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Passaporte'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'Passaporte'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cRegistro_Alfandega: TUniDBEdit
              Left = 619
              Top = 76
              Width = 164
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Registro_Alfandega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'Registro Alfandega'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cCNAE: TUniDBEdit
              Left = 619
              Top = 132
              Width = 164
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CNAE'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'CNAE Principal'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cDesoneracao: TUniDBLookupComboBox
              Left = 17
              Top = 188
              Width = 766
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsDesoneracao
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Desoneracao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Desoneracao'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cIndicadorIE: TUniDBLookupComboBox
              Left = 17
              Top = 132
              Width = 596
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsIndicadorIE
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Indicador_IE'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Indicador de IE'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object gOrgao: TUniGroupBox
            Left = 23
            Top = 839
            Width = 798
            Height = 95
            Hint = ''
            ShowHint = True
            Caption = 'Org'#227'o P'#250'blico'
            TabOrder = 17
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cEstado_Municipio: TUniDBEdit
              Left = 264
              Top = 20
              Width = 315
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Estado_Municipio'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Estado/Municipio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cAbreviatura: TUniDBEdit
              Left = 586
              Top = 20
              Width = 197
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Abreviatura'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Abreviatura'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBComboBox1: TUniDBComboBox
              Left = 17
              Top = 20
              Width = 240
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Ambito'
              DataSource = dsDestinatarios
              Items.Strings = (
                'Federal'
                'Estadual'
                'Municipal')
              ParentFont = False
              TabOrder = 3
              FieldLabel = #195'mbito'
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              IconItems = <
                item
                end
                item
                end
                item
                end>
            end
          end
          object cPais: TUniDBLookupComboBox
            Left = 23
            Top = 193
            Width = 265
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsPaises
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Pais'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 18
            Color = clWindow
            FieldLabel = 'Pa'#237's'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniButton1: TUniButton
            Left = 408
            Top = 32
            Width = 75
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = 'UniButton1'
            TabOrder = 19
          end
          object cRamo_Atividade: TUniDBLookupComboBox
            Left = 23
            Top = 472
            Width = 270
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsRamo
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Ramo_Atividade'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 20
            Color = clWindow
            FieldLabel = 'Ramo de Atividade'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 299
            Top = 472
            Width = 264
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoProduto
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Tipo_Produto'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 21
            Color = clWindow
            FieldLabel = 'Tipo de Produto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Pessoais'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 680
        object pFicha2: TUniPanel
          Left = 158
          Top = 10
          Width = 751
          Height = 670
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object cData_Nascimento: TUniDBDateTimePicker
            Left = 17
            Top = 20
            Width = 138
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Data_Nascimento'
            DataSource = dsDestinatarios
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 1
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            FieldLabel = 'Data de Nascimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cNaturalidade: TUniDBEdit
            Left = 161
            Top = 20
            Width = 360
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Naturalidade'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Natural de'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNome_Mae: TUniDBEdit
            Left = 17
            Top = 76
            Width = 504
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Mae'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Nome da M'#227'e'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cNome_Pai: TUniDBEdit
            Left = 17
            Top = 132
            Width = 504
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Nome_Pai'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Nome do Pai'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cProfissao: TUniDBEdit
            Left = 17
            Top = 188
            Width = 504
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Profissao'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Profiss'#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cSexo: TUniDBRadioGroup
            Left = 571
            Top = 13
            Width = 138
            Height = 68
            Hint = ''
            ShowHint = True
            DataField = 'Sexo'
            DataSource = dsDestinatarios
            Caption = 'Sexo'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Masculino'
              'Feminino')
            Values.Strings = (
              'M'
              'F')
          end
          object cEstadoCivil: TUniDBRadioGroup
            Left = 571
            Top = 101
            Width = 138
            Height = 145
            Hint = ''
            ShowHint = True
            DataField = 'Estado_Civil'
            DataSource = dsDestinatarios
            Caption = 'Estado Civil'
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Casado'
              'Divorciado'
              'Solteiro'
              'Vi'#250'vo'
              'Outro')
            Values.Strings = (
              'C'
              'D'
              'S'
              'V'
              'O')
          end
          object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
            Left = 17
            Top = 244
            Width = 192
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Renda_Mensal'
            DataSource = dsDestinatarios
            TabOrder = 8
            FieldLabel = 'Renda Mensal'
            FieldLabelAlign = laTop
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object UniGroupBox1: TUniGroupBox
            Left = 14
            Top = 315
            Width = 719
            Height = 324
            Hint = ''
            ShowHint = True
            Caption = 'Local de trabalho'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cTempo_Servico: TUniDBEdit
              Left = 12
              Top = 252
              Width = 156
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Tempo_Servico'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Tempo de Servi'#231'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cTrabalho_Local: TUniDBEdit
              Left = 12
              Top = 28
              Width = 694
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Trabalho_Local'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Local / Empresa'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cTrabalho_Endereco: TUniDBEdit
              Left = 12
              Top = 140
              Width = 365
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Trabalho_Endereco'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Rua'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cTrabalho_Bairro: TUniDBEdit
              Left = 383
              Top = 140
              Width = 323
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Trabalho_Bairro'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Bairro'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cTrabalho_Cidade: TUniDBLookupComboBox
              Left = 383
              Top = 85
              Width = 323
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsMunicipios
              KeyField = 'Nome'
              ListFieldIndex = 0
              DataField = 'Trabalho_Municipio'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Munic'#237'pio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTrabalho_CEP: TUniDBEdit
              Left = 12
              Top = 84
              Width = 126
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Trabalho_CEP'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 6
              InputType = 'text'
              FieldLabel = 'CEP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cTrabalho_Estado: TUniDBLookupComboBox
              Left = 144
              Top = 84
              Width = 233
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 0
              DataField = 'Trabalho_Estado'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTrabalho_Telefone: TUniDBEdit
              Left = 12
              Top = 196
              Width = 156
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Trabalho_Telefone'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'Telefone'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
        end
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Refer'#234'ncias'
      object UniScrollBox3: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 665
        object pFicha3: TUniPanel
          Left = 185
          Top = 20
          Width = 725
          Height = 645
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
          object UniGroupBox4: TUniGroupBox
            Left = 19
            Top = 18
            Width = 687
            Height = 259
            Hint = ''
            ShowHint = True
            Caption = 'Refer'#234'ncias Banc'#225'rias'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cReferencias_Banco1: TUniDBEdit
              Left = 13
              Top = 20
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco1'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Banco'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Banco1Agencia: TUniDBEdit
              Left = 269
              Top = 20
              Width = 114
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco1Agencia'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Ag'#234'ncia'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Banco1Conta: TUniDBEdit
              Left = 389
              Top = 20
              Width = 146
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco1Conta'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Conta'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Banco1Data: TUniDBDateTimePicker
              Left = 540
              Top = 20
              Width = 121
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco1Data'
              DataSource = dsDestinatarios
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 4
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              FieldLabel = 'Data'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cReferencias_Banco2: TUniDBEdit
              Left = 13
              Top = 76
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco2'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Banco'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Banco2Agencia: TUniDBEdit
              Left = 269
              Top = 76
              Width = 114
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco2Agencia'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 6
              FieldLabel = 'Ag'#234'ncia'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Banco2Conta: TUniDBEdit
              Left = 389
              Top = 76
              Width = 146
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco2Conta'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'Conta'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Banco2Data: TUniDBDateTimePicker
              Left = 540
              Top = 76
              Width = 121
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Banco2Data'
              DataSource = dsDestinatarios
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 8
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              FieldLabel = 'Data'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cReferencias_Cartoes: TUniDBEdit
              Left = 13
              Top = 188
              Width = 648
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Cartoes'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'Cart'#245'es de Cr'#233'dito'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cSwift_Code: TUniDBEdit
              Left = 349
              Top = 132
              Width = 312
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Swift_Code'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = 'Swift Code'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cIBAN: TUniDBEdit
              Left = 13
              Top = 132
              Width = 330
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'IBAN'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 11
              FieldLabel = 'IBAN'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox8: TUniGroupBox
            Left = 19
            Top = 310
            Width = 687
            Height = 314
            Hint = ''
            ShowHint = True
            Caption = 'Refer'#234'ncias Comerciais'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cReferencias_Comercial1: TUniDBEdit
              Left = 9
              Top = 20
              Width = 402
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Comercial1'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Nome'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Comercial2: TUniDBEdit
              Left = 9
              Top = 76
              Width = 402
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Comercial2'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Nome'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_Comercial3: TUniDBEdit
              Left = 9
              Top = 132
              Width = 402
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_Comercial3'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Nome'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_ComercialContato1: TUniDBEdit
              Left = 417
              Top = 19
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_ComercialContato1'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Contato'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_ComercialContato2: TUniDBEdit
              Left = 417
              Top = 75
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_ComercialContato2'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Contato'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_ComercialContato3: TUniDBEdit
              Left = 417
              Top = 131
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_ComercialContato3'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 6
              FieldLabel = 'Contato'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cReferencias_ComercialData1: TUniDBDateTimePicker
              Left = 9
              Top = 187
              Width = 121
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Cliente_Desde'
              DataSource = dsDestinatarios
              DateTime = 43643.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              TabOrder = 7
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              FieldLabel = 'Cliente desde'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cReferencias_ComercialPontual1: TUniDBEdit
              Left = 136
              Top = 188
              Width = 531
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Referencias_ComercialPontual1'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'Pontualidade'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit1: TUniDBEdit
              Left = 9
              Top = 243
              Width = 180
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Maior_Compra'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'Valor da '#218'ltima Compra'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
        end
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Avalista'
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Aguarde um instante por favor. . .'
      ScreenMask.Target = Owner
      ShowMaskBeforeActivate = True
      object UniScrollBox4: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 561
        object pFicha4: TUniPanel
          Left = 143
          Top = 13
          Width = 510
          Height = 548
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
          object cAvalista_Nome: TUniDBEdit
            Left = 18
            Top = 17
            Width = 470
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_Nome'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Nome'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAvalista_CNPJ: TUniDBEdit
            Left = 18
            Top = 73
            Width = 177
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_CNPJ'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'CNPJ'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAvalista_CPF: TUniDBEdit
            Left = 18
            Top = 129
            Width = 177
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_CPF'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'CPF'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAvalista_RG: TUniDBEdit
            Left = 18
            Top = 185
            Width = 177
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_RG'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'RG'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAvalista_Endereco: TUniDBEdit
            Left = 18
            Top = 297
            Width = 470
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_Endereco'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Endere'#231'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAvalista_Bairro: TUniDBEdit
            Left = 18
            Top = 353
            Width = 470
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_Bairro'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Bairro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAvalista_Cidade: TUniDBLookupComboBox
            Left = 18
            Top = 465
            Width = 470
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsMunicipios
            KeyField = 'Codigo'
            ListFieldIndex = 0
            DataField = 'Avalista_Municipio'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Munic'#237'pio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cAvalista_Estado: TUniDBLookupComboBox
            Left = 18
            Top = 409
            Width = 470
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsEstados
            KeyField = 'UF'
            ListFieldIndex = 0
            DataField = 'Avalista_Estado'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cAvalista_CEP: TUniDBEdit
            Left = 18
            Top = 241
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Avalista_CEP'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'CEP'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
        end
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Entrega / Retirada'
      object UniScrollBox5: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 873
        object pFicha5: TUniPanel
          Left = 190
          Top = 19
          Width = 850
          Height = 854
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
          object UniGroupBox5: TUniGroupBox
            Left = 19
            Top = 13
            Width = 803
            Height = 398
            Hint = ''
            ShowHint = True
            Caption = 'Endere'#231'o de Entrega'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cRua_Entrega: TUniDBEdit
              Left = 148
              Top = 41
              Width = 413
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Rua_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Rua'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cRua_EntregaNumero: TUniDBEdit
              Left = 565
              Top = 41
              Width = 215
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Rua_EntregaNumero'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Rua N'#186
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cBairro_Entrega: TUniDBEdit
              Left = 181
              Top = 97
              Width = 258
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Bairro_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Bairro'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cMunicipio_Entrega: TUniDBLookupComboBox
              Left = 443
              Top = 97
              Width = 337
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsMunicipios
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Municipio_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Munic'#237'pio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cEstado_Entrega: TUniDBLookupComboBox
              Left = 22
              Top = 208
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'UF;Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 1
              DataField = 'Estado_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cCEP_Entrega: TUniDBEdit
              Left = 22
              Top = 41
              Width = 122
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CEP_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 6
              FieldLabel = 'CEP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cCNPJ_Entrega: TUniDBEdit
              Left = 22
              Top = 153
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CNPJ_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'CNPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cIE_Entrega: TUniDBEdit
              Left = 530
              Top = 153
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'IE_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'Inscri'#231#227'o Estadual'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cCPF_Entrega: TUniDBEdit
              Left = 276
              Top = 153
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CPF_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'CPF'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cRecebedor_Entrega: TUniDBEdit
              Left = 22
              Top = 264
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Recebedor_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = 'Recebedor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cRua_ComplEntrega: TUniDBEdit
              Left = 22
              Top = 97
              Width = 155
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Rua_ComplEntrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 11
              FieldLabel = 'Complemento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cEmail_Entrega: TUniDBEdit
              Left = 22
              Top = 320
              Width = 758
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Email_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 12
              FieldLabel = 'E-Mail'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cTelefone_Entrega: TUniDBEdit
              Left = 276
              Top = 264
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Telefone_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = 'Telefone'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cPais_Entrega: TUniDBLookupComboBox
              Left = 276
              Top = 208
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsPaises
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Pais_Entrega'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 14
              Color = clWindow
              FieldLabel = 'Pa'#237's'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cEndereco_Entrega: TUniDBCheckBox
              Left = 632
              Top = 20
              Width = 148
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Endereco_Entrega'
              DataSource = dsDestinatarios
              Caption = 'Endere'#231'o de Entrega'
              ParentFont = False
              Font.Height = -13
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object UniGroupBox9: TUniGroupBox
            Left = 19
            Top = 432
            Width = 807
            Height = 394
            Hint = ''
            ShowHint = True
            Caption = 'Endere'#231'o de Retirada'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBEdit2: TUniDBEdit
              Left = 140
              Top = 41
              Width = 413
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Rua_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Rua'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit3: TUniDBEdit
              Left = 557
              Top = 41
              Width = 215
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Rua_NumeroRetirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Rua N'#186
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit4: TUniDBEdit
              Left = 173
              Top = 97
              Width = 258
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Bairro_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Bairro'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBLookupComboBox2: TUniDBLookupComboBox
              Left = 435
              Top = 97
              Width = 337
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsMunicipios
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Municipio_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Munic'#237'pio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBLookupComboBox3: TUniDBLookupComboBox
              Left = 14
              Top = 208
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'UF;Nome'
              ListSource = dsEstados
              KeyField = 'UF'
              ListFieldIndex = 1
              DataField = 'Estado_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Estado'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit5: TUniDBEdit
              Left = 14
              Top = 41
              Width = 122
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CEP_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 6
              FieldLabel = 'CEP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit6: TUniDBEdit
              Left = 14
              Top = 153
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CNPJ_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'CNPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit7: TUniDBEdit
              Left = 522
              Top = 153
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'IE_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 8
              FieldLabel = 'Inscri'#231#227'o Estadual'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit8: TUniDBEdit
              Left = 268
              Top = 153
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'CPF_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'CPF'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit9: TUniDBEdit
              Left = 14
              Top = 264
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Recebedor_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 10
              FieldLabel = 'Recebedor'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit10: TUniDBEdit
              Left = 14
              Top = 97
              Width = 155
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Rua_ComplRetirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 11
              FieldLabel = 'Complemento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit11: TUniDBEdit
              Left = 14
              Top = 320
              Width = 758
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Email_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 12
              FieldLabel = 'E-Mail'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit12: TUniDBEdit
              Left = 268
              Top = 264
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Telefone_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 13
              FieldLabel = 'Telefone'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBLookupComboBox4: TUniDBLookupComboBox
              Left = 268
              Top = 208
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsPaises
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Pais_Retirada'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 14
              Color = clWindow
              FieldLabel = 'Pa'#237's'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 624
              Top = 20
              Width = 148
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Endereco_Retirada'
              DataSource = dsDestinatarios
              Caption = 'Endere'#231'o de Retirada'
              ParentFont = False
              Font.Height = -13
              TabOrder = 15
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object UniTabSheet7: TUniTabSheet
      Hint = ''
      Caption = 'Premissas'
      object UniScrollBox7: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 787
        object pFicha7: TUniPanel
          Left = 137
          Top = 31
          Width = 616
          Height = 756
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
          object cDesconto_Dupl_Tipo: TUniDBLookupComboBox
            Left = 14
            Top = 14
            Width = 348
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsClassDupl
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Desconto_Dupl_Tipo'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Desconto Duplicata'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cDesconto_Dupl_Dias: TUniDBEdit
            Left = 487
            Top = 71
            Width = 109
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Dupl_Dias'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Limite (Dias)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cDesconto_Dupl_Campo: TUniDBLookupComboBox
            Left = 14
            Top = 70
            Width = 348
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsClassDupl
            KeyField = 'Codigo'
            ListFieldIndex = 1
            DataField = 'Desconto_Dupl_Campo'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Calculo Desconto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVencimento_Contrato: TUniDBDateTimePicker
            Left = 15
            Top = 515
            Width = 169
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_Contrato'
            DataSource = dsDestinatarios
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            FieldLabel = 'Vencimento Contrato'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVencimento_Radar: TUniDBDateTimePicker
            Left = 15
            Top = 569
            Width = 169
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_Radar'
            DataSource = dsDestinatarios
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            FieldLabel = 'Vencimento Radar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cVencimento_Vinculacao: TUniDBDateTimePicker
            Left = 15
            Top = 623
            Width = 169
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Vencimento_Vinculacao'
            DataSource = dsDestinatarios
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 6
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            FieldLabel = 'Vencimento Vincula'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cCondicao_Pagamento: TUniDBEdit
            Left = 15
            Top = 678
            Width = 169
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Condicao_Pagamento'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Condi'#231#227'o Pgto (Duplicata)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cAtraso_Maximo: TUniDBEdit
            Left = 15
            Top = 460
            Width = 169
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Atraso_Maximo'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 8
            FieldLabel = 'Atraso M'#225'ximo Pgto em Dias:'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cDesconto_Dupl_Valor: TUniDBEdit
            Left = 367
            Top = 70
            Width = 114
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Dupl_Valor'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'Valor %'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit13: TUniDBEdit
            Left = 14
            Top = 126
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Margem_Lucro'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 10
            FieldLabel = 'Margem Lucro (%)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit14: TUniDBEdit
            Left = 191
            Top = 126
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Margem_LucroValor'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 11
            FieldLabel = 'Margem Lucro (Valor)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit15: TUniDBEdit
            Left = 14
            Top = 182
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Operacional'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 12
            FieldLabel = 'Desconto Operacional (%)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit16: TUniDBEdit
            Left = 191
            Top = 182
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_OperacionalValor'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 13
            FieldLabel = 'Desconto Operacional (Valor)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit17: TUniDBEdit
            Left = 14
            Top = 238
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Adicional'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 14
            FieldLabel = 'Desconto Adicional (%)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit18: TUniDBEdit
            Left = 191
            Top = 238
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_AdicionalValor'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 15
            FieldLabel = 'Desconto Adicional (Valor)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit19: TUniDBEdit
            Left = 14
            Top = 294
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_Comercial'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 16
            FieldLabel = 'Desconto Comercial (%)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit20: TUniDBEdit
            Left = 191
            Top = 294
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Desconto_ComercialValor'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 17
            FieldLabel = 'Desconto Comercial (Valor)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit21: TUniDBEdit
            Left = 14
            Top = 350
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Fator_Faturamento'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 18
            FieldLabel = 'Fator Faturamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniDBEdit22: TUniDBEdit
            Left = 191
            Top = 350
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Fator_SISCOMEX'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 19
            FieldLabel = 'Fator SISCOMEX'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cLimiteSaldo: TUniFormattedNumberEdit
            Left = 367
            Top = 405
            Width = 196
            Height = 56
            Hint = ''
            ShowHint = True
            Alignment = taRightJustify
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 20
            BlankValue = 0
            FieldLabel = 'Limite Saldo'
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
            Left = 14
            Top = 405
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_Credito'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 21
            FieldLabel = 'Limite Cr'#233'dito'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            OnChangeValue = UniDBFormattedNumberEdit2ChangeValue
          end
          object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
            Left = 190
            Top = 405
            Width = 171
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_Utilizado'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 22
            FieldLabel = 'Limite Utilizado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            OnChangeValue = UniDBFormattedNumberEdit3ChangeValue
          end
        end
      end
    end
    object UniTabSheet13: TUniTabSheet
      Hint = ''
      Caption = 'COMEX'
      DesignSize = (
        1209
        938)
      object UniPanel2: TUniPanel
        Left = 205
        Top = 33
        Width = 383
        Height = 219
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
        object cPO: TUniDBEdit
          Left = 21
          Top = 28
          Width = 124
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'PO'
          DataSource = dsDestinatarios
          ParentFont = False
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 1
          FieldLabel = 'N'#186' PO'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
        end
        object cMascara_PO: TUniDBEdit
          Left = 151
          Top = 28
          Width = 167
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Mascara_PO'
          DataSource = dsDestinatarios
          ParentFont = False
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 2
          FieldLabel = 'Mascara do PO'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
        end
        object cMascara_Processo: TUniDBEdit
          Left = 21
          Top = 83
          Width = 204
          Height = 55
          Hint = ''
          ShowHint = True
          DataField = 'Mascara_Processo'
          DataSource = dsDestinatarios
          ParentFont = False
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 3
          FieldLabel = 'Mascara do Processo'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          SelectOnFocus = True
        end
        object cModalidade_Importacao: TUniDBLookupComboBox
          Left = 21
          Top = 137
          Width = 336
          Height = 55
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao'
          ListSource = dsModalImp
          KeyField = 'Codigo'
          ListFieldIndex = 1
          DataField = 'Modalidade_Importacao'
          DataSource = dsDestinatarios
          ParentFont = False
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 4
          Color = clWindow
          FieldLabel = 'Modalidade de Importa'#231#227'o'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          Style = csDropDown
        end
      end
    end
    object UniTabSheet10: TUniTabSheet
      Hint = ''
      Caption = 'Cobran'#231'a'
      object UniScrollBox10: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 393
        object pFicha10: TUniPanel
          Left = 131
          Top = 13
          Width = 726
          Height = 380
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
          object cCobranca_Endereco: TUniDBEdit
            Left = 21
            Top = 22
            Width = 485
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Cobranca_Endereco'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Endere'#231'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCobranca_Bairro: TUniDBEdit
            Left = 21
            Top = 78
            Width = 485
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Cobranca_Bairro'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Bairro'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCobranca_Cidade: TUniDBLookupComboBox
            Left = 21
            Top = 133
            Width = 485
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsMunicipios
            KeyField = 'Nome'
            ListFieldIndex = 0
            DataField = 'Cobranca_Municipio'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Munic'#237'pio'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cCobranca_Estado: TUniDBLookupComboBox
            Left = 21
            Top = 188
            Width = 485
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Nome'
            ListSource = dsMunicipios
            KeyField = 'UF'
            ListFieldIndex = 0
            DataField = 'Cobranca_Estado'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Estado'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cCobranca_CEP: TUniDBEdit
            Left = 21
            Top = 244
            Width = 142
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Cobranca_CEP'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'CEP'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCobranca_Boleto: TUniDBCheckBox
            Left = 551
            Top = 201
            Width = 143
            Height = 28
            Hint = ''
            ShowHint = True
            DataField = 'Cobranca_Boleto'
            DataSource = dsDestinatarios
            Caption = 'Cobranca_Boleto'
            ParentFont = False
            Font.Height = -13
            TabOrder = 6
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cMensalidade_Dia: TUniDBEdit
            Left = 21
            Top = 300
            Width = 188
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Mensalidade'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 7
            FieldLabel = 'Mensalidade'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cCliente_Diferenciado: TUniDBCheckBox
            Left = 551
            Top = 172
            Width = 143
            Height = 28
            Hint = ''
            ShowHint = True
            DataField = 'Cliente_Diferenciado'
            DataSource = dsDestinatarios
            Caption = 'Cliente_Diferenciado'
            ParentFont = False
            Font.Height = -13
            TabOrder = 8
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 536
            Top = 19
            Width = 169
            Height = 117
            Hint = ''
            ShowHint = True
            DataField = 'Cobranca_TipoFrete'
            DataSource = dsDestinatarios
            Caption = 'Tipo de Frete'
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 9
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Conta Emitente'
              'Conta Destinat'#225'rio'
              'Conta Terceiros'
              'Sem Frete')
            Values.Strings = (
              '0'
              '1'
              '2'
              '9')
          end
          object UniDBEdit25: TUniDBEdit
            Left = 220
            Top = 300
            Width = 134
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Mensalidade_Dia'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 10
            FieldLabel = 'Dia de Vencto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
        end
      end
    end
    object UniTabSheet8: TUniTabSheet
      Hint = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Caption = 'Comerciais'
      object UniScrollBox8: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 653
        object UniPanel1: TUniPanel
          Left = 141
          Top = 20
          Width = 548
          Height = 633
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
          object cPraca_Pagamento: TUniDBEdit
            Left = 15
            Top = 20
            Width = 301
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Praca_Pagamento'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Pra'#231'a de Pagamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object UniGroupBox6: TUniGroupBox
            Left = 17
            Top = 102
            Width = 512
            Height = 207
            Hint = ''
            ShowHint = True
            Caption = 'Representante'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cRepresentante_Codigo: TUniDBEdit
              Left = 18
              Top = 20
              Width = 120
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Codigo'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'C'#243'digo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cRepresentante_Senha: TUniDBEdit
              Left = 18
              Top = 76
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Senha'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Senha'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBLookupComboBox5: TUniDBLookupComboBox
              Left = 275
              Top = 76
              Width = 214
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsRegioes
              KeyField = 'Codigo'
              ListFieldIndex = 0
              DataField = 'Regiao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Style = [fsBold]
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Regi'#227'o'
              FieldLabelAlign = laTop
            end
            object cRepresentante_Comissao: TUniDBEdit
              Left = 18
              Top = 132
              Width = 120
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Representante_Comissao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cComissao_Gerencia: TUniDBEdit
              Left = 148
              Top = 132
              Width = 120
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Comissao_Gerencia'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Comiss'#227'o Ger'#234'ncia'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox10: TUniGroupBox
            Left = 17
            Top = 332
            Width = 512
            Height = 149
            Hint = ''
            ShowHint = True
            Caption = 'Trader'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cTrader: TUniDBLookupComboBox
              Left = 14
              Top = 20
              Width = 333
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              KeyField = 'Codigo'
              ListFieldIndex = 0
              DataField = 'Trader'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Trader'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTipo_Comissao: TUniDBLookupComboBox
              Left = 14
              Top = 76
              Width = 333
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              KeyField = 'Codigo'
              ListFieldIndex = 0
              DataField = 'Tipo_Comissao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Tipo_Comissao'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit23: TUniDBEdit
              Left = 353
              Top = 76
              Width = 120
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Trader_Comissao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox11: TUniGroupBox
            Left = 15
            Top = 501
            Width = 512
            Height = 107
            Hint = ''
            ShowHint = True
            Caption = 'Atendente'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cAtendente: TUniDBLookupComboBox
              Left = 20
              Top = 30
              Width = 333
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Matricula;Nome'
              KeyField = 'Matricula'
              ListFieldIndex = 1
              DataField = 'Atendente'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Atendente'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object UniDBEdit24: TUniDBEdit
              Left = 359
              Top = 30
              Width = 120
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Atendente_Comissao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Comiss'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
        end
      end
    end
    object UniTabSheet11: TUniTabSheet
      Hint = ''
      Caption = 'E-Mail'
      object UniScrollBox11: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 380
        object pFicha11: TUniPanel
          Left = 128
          Top = 13
          Width = 815
          Height = 367
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
          object cEmail: TUniDBEdit
            Left = 25
            Top = 63
            Width = 768
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Email'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'E-Mail'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cSite: TUniDBEdit
            Left = 25
            Top = 291
            Width = 768
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Site'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Site'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
          end
          object cEnviar_Email: TUniDBCheckBox
            Left = 25
            Top = 23
            Width = 104
            Height = 31
            Hint = ''
            ShowHint = True
            DataField = 'Enviar_Email'
            DataSource = dsDestinatarios
            Caption = 'Enviar E-mail'
            ParentFont = False
            Font.Height = -13
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cEmail_Copia: TUniDBMemo
            Left = 25
            Top = 118
            Width = 768
            Height = 173
            Hint = ''
            ShowHint = True
            DataField = 'Email_Copia'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'CC'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object UniTabSheet12: TUniTabSheet
      Hint = ''
      Caption = 'Outros Dados'
      object UniScrollBox12: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 472
        object pFicha12: TUniPanel
          Left = 137
          Top = 13
          Width = 548
          Height = 459
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
          object UniGroupBox7: TUniGroupBox
            Left = 18
            Top = 19
            Width = 514
            Height = 202
            Hint = ''
            ShowHint = True
            Caption = 'Layout de captura dos dados do lote da NF-E'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cLayoutLote_Fabricacao: TUniDBEdit
              Left = 12
              Top = 21
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'LayoutLote_Fabricacao'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Fabrica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cLayoutLote_Numero: TUniDBEdit
              Left = 12
              Top = 77
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'LayoutLote_Numero'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'N'#250'mero do Lote'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cLayoutLote_Validade: TUniDBEdit
              Left = 12
              Top = 133
              Width = 250
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'LayoutLote_Validade'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Val'#237'dade'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
          object UniGroupBox12: TUniGroupBox
            Left = 18
            Top = 235
            Width = 514
            Height = 207
            Hint = ''
            ShowHint = True
            Caption = 'Configura'#231#245'es de FTP'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cFTP_Usuario: TUniDBEdit
              Left = 12
              Top = 21
              Width = 475
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'FTP_Usuario'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Usu'#225'rio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cFTP_Senha: TUniDBEdit
              Left = 13
              Top = 77
              Width = 474
              Height = 55
              Hint = ''
              ParentRTL = False
              ShowHint = True
              DataField = 'FTP_Senha'
              DataSource = dsDestinatarios
              PasswordChar = #167
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Senha'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cFTP_IP: TUniDBEdit
              Left = 13
              Top = 133
              Width = 202
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'FTP_IP'
              DataSource = dsDestinatarios
              ParentFont = False
              Font.Height = -13
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'IP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cFTP_Passive: TUniDBCheckBox
              Left = 245
              Top = 164
              Width = 97
              Height = 22
              Hint = ''
              ShowHint = True
              DataField = 'FTP_Passive'
              DataSource = dsDestinatarios
              Caption = 'Passive Mode'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object UniTabSheet9: TUniTabSheet
      Hint = ''
      Caption = 'Contabil'
      object UniScrollBox9: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 653
        object pFicha9: TUniPanel
          Left = 263
          Top = 11
          Width = 613
          Height = 642
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
          object GradeModal: TUniDBGrid
            Left = 13
            Top = 433
            Width = 588
            Height = 162
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            DataSource = dsDestModal
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            WebOptions.Paged = False
            WebOptions.CustomizableCells = False
            LoadMask.Message = 'Loading data...'
            NumericEditorPrecision = 2
            ForceFit = True
            BorderStyle = ubsSolid
            TrackOver = False
            TabOrder = 1
            Columns = <
              item
                FieldName = 'Nome'
                Title.Alignment = taCenter
                Title.Caption = 'Nome'
                Title.Font.Style = [fsBold]
                Width = 283
                ReadOnly = True
              end>
          end
          object pModal: TUniContainerPanel
            Left = 13
            Top = 14
            Width = 586
            Height = 413
            Hint = ''
            Enabled = False
            ShowHint = True
            ParentColor = False
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            TabOrder = 2
            object cModal: TUniDBLookupComboBox
              Left = 14
              Top = 9
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsModalImp
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Modalidade'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Modalidade Importa'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox6: TUniDBLookupComboBox
              Left = 16
              Top = 66
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Cliente'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Conta Ativo (Cliente)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox7: TUniDBLookupComboBox
              Left = 14
              Top = 120
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Cliente_Adiant'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Conta Adiantamento (Cliente)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox8: TUniDBLookupComboBox
              Left = 14
              Top = 176
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Cliente_Devol'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Conta Devolu'#231#227'o (Cliente)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox9: TUniDBLookupComboBox
              Left = 14
              Top = 232
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Fornecedor'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Conta Passivo (Fornecedor)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox10: TUniDBLookupComboBox
              Left = 14
              Top = 288
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Fornecedor_Adiant'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Conta Adiantamento (Fornecedor)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox11: TUniDBLookupComboBox
              Left = 14
              Top = 344
              Width = 555
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlanoContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              DataField = 'Fornecedor_Devol'
              DataSource = dsDestModal
              AnyMatch = True
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Conta Devolu'#231#227'o (Fornecedor)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object UniContainerPanel1: TUniContainerPanel
            Left = 0
            Top = 608
            Width = 613
            Height = 34
            Hint = ''
            ShowHint = True
            ParentColor = False
            Color = 4539717
            Align = alBottom
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Pasta'#39';'#13#10'}')
            TabOrder = 3
            object bNavegaTrib: TUniDBNavigator
              Left = 0
              Top = 0
              Width = 143
              Height = 34
              Cursor = crHandPoint
              Hint = ''
              ShowHint = True
              DataSource = dsDestModal
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              IconSet = icsFontAwesome
              Align = alLeft
              TabOrder = 1
            end
            object bAddTrib: TUniSpeedButton
              Left = 140
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Adicionar novo registro.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 0
              TabOrder = 2
              OnClick = bAddTribClick
            end
            object bEditTrib: TUniSpeedButton
              Left = 181
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Editar registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 1
              TabOrder = 3
              OnClick = bEditTribClick
            end
            object bExcTrib: TUniSpeedButton
              Left = 222
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Excluir registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 2
              TabOrder = 4
              OnClick = bExcTribClick
            end
            object bCancTrib: TUniSpeedButton
              Left = 304
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 3
              TabOrder = 5
              OnClick = bCancTribClick
            end
            object bGravTrib: TUniSpeedButton
              Left = 263
              Top = 0
              Width = 41
              Height = 35
              Hint = 'Salva o registro corrente.'
              ShowHint = True
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 4
              TabOrder = 6
              OnClick = bGravTribClick
            end
          end
        end
      end
    end
    object UniTabSheet6: TUniTabSheet
      Hint = ''
      Caption = 'Observa'#231#245'es'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1209
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1207
          936)
        ScrollHeight = 499
        object pFicha6: TUniPanel
          Left = 124
          Top = 13
          Width = 902
          Height = 486
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
          object cObservacao: TUniDBMemo
            Left = 12
            Top = 14
            Width = 877
            Height = 459
            Hint = ''
            ShowHint = True
            DataField = 'Observacao'
            DataSource = dsDestinatarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Observa'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 120
    Top = 71
  end
  object dsClassDupl: TDataSource
    DataSet = ClassDupl
    Left = 120
    Top = 114
  end
  object dsDesoneracao: TDataSource
    DataSet = Desoneracao
    Left = 120
    Top = 158
  end
  object dsEstados: TDataSource
    DataSet = Estados
    Left = 120
    Top = 202
  end
  object dsMunicipios: TDataSource
    DataSet = Municipios
    Left = 120
    Top = 246
  end
  object dsPaises: TDataSource
    DataSet = Paises
    Left = 120
    Top = 293
  end
  object dsPlanoContas: TDataSource
    DataSet = PlanoContas
    Left = 120
    Top = 338
  end
  object dsRamo: TDataSource
    DataSet = Ramo
    Left = 120
    Top = 383
  end
  object dsModalImp: TDataSource
    DataSet = ModalImp
    Left = 120
    Top = 429
  end
  object dsIndicadorIE: TDataSource
    DataSet = IndicadorIE
    Left = 120
    Top = 476
  end
  object dsTipoProduto: TDataSource
    DataSet = TipoProduto
    Left = 120
    Top = 521
  end
  object dsRegioes: TDataSource
    DataSet = Regioes
    Left = 120
    Top = 567
  end
  object Destinatarios: TFDQuery
    BeforePost = DestinatariosBeforePost
    BeforeDelete = DestinatariosBeforeDelete
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRecsMax, evRowsetSize]
    FetchOptions.Mode = fmAll
    FetchOptions.RowsetSize = 10
    UpdateOptions.AssignedValues = [uvEUpdate, uvUpdateMode, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select top 2 * from destinatarios')
    Left = 40
    Top = 71
  end
  object Estados: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Estados')
    Left = 40
    Top = 204
  end
  object ClassDupl: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ClassificacaoDuplicata')
    Left = 40
    Top = 114
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
    Left = 40
    Top = 247
  end
  object Paises: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Paises')
    Left = 40
    Top = 291
  end
  object Desoneracao: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Desoneracao')
    Left = 40
    Top = 159
  end
  object PlanoContas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM PlanoContas')
    Left = 40
    Top = 338
  end
  object Ramo: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM RamoAtividade')
    Left = 40
    Top = 383
  end
  object ModalImp: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM ModalidadeImportacao')
    Left = 40
    Top = 428
  end
  object IndicadorIE: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM IndicadorIE')
    Left = 40
    Top = 475
  end
  object Regioes: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Regioes')
    Left = 40
    Top = 566
  end
  object TipoProduto: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TipoProduto')
    Left = 40
    Top = 520
  end
  object Pedidos: TFDQuery
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Pedidos ORDER BY Pedido')
    Left = 39
    Top = 666
  end
  object Notas: TFDQuery
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Notas ORDER BY NFe_Chave')
    Left = 199
    Top = 79
  end
  object OrigemContas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM OrigemContas')
    Left = 120
    Top = 667
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Notas ORDER BY NFe_Chave')
    Left = 39
    Top = 616
  end
  object dsEmrpesas: TDataSource
    DataSet = Regioes
    Left = 120
    Top = 616
  end
  object UniScreenMask1: TUniScreenMask
    AttachedControl = Navega
    Enabled = True
    DisplayMessage = 'Aguarde um instante...'
    TargetControl = Owner
    Left = 492
    Top = 3
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 444
    Top = 3
  end
  object DestModal: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * '
      'FROM DestinatariosModalidades dm')
    Left = 40
    Top = 716
    object DestModalDestinatario: TIntegerField
      FieldName = 'Destinatario'
      Origin = 'Destinatario'
    end
    object DestModalModalidade: TSmallintField
      FieldName = 'Modalidade'
      Origin = 'Modalidade'
    end
    object DestModalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = ModalImp
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Modalidade'
      Size = 50
      Lookup = True
    end
    object DestModalCliente: TStringField
      FieldName = 'Cliente'
      Origin = 'Cliente'
      Size = 10
    end
    object DestModalCliente_Adiant: TStringField
      FieldName = 'Cliente_Adiant'
      Origin = 'Cliente_Adiant'
      Size = 10
    end
    object DestModalCliente_Devol: TStringField
      FieldName = 'Cliente_Devol'
      Origin = 'Cliente_Devol'
      Size = 10
    end
    object DestModalFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = 'Fornecedor'
      Size = 10
    end
    object DestModalFornecedor_Adiant: TStringField
      FieldName = 'Fornecedor_Adiant'
      Origin = 'Fornecedor_Adiant'
      Size = 10
    end
    object DestModalFornecedor_Devol: TStringField
      FieldName = 'Fornecedor_Devol'
      Origin = 'Fornecedor_Devol'
      Size = 10
    end
  end
  object dsDestModal: TDataSource
    DataSet = DestModal
    Left = 120
    Top = 717
  end
end
