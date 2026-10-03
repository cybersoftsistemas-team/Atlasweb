object fCadUsuarios: TfCadUsuarios
  Left = 0
  Top = 0
  Width = 1071
  Height = 833
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1071
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
        ' = '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    ExplicitWidth = 1435
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 140
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsUsuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 141
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
      Left = 182
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
      Left = 223
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
      Left = 305
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 5
      OnClick = bCancelarClick
    end
    object bSalvar: TUniSpeedButton
      Left = 264
      Top = 0
      Width = 41
      Height = 35
      Hint = ''
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 6
      OnClick = bSalvarClick
    end
    object bFechar: TUniSpeedButton
      Left = 346
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
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1071
    Height = 798
    Hint = ''
    BodyRTL = False
    ActivePage = aFicha
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    ExplicitWidth = 1435
    ExplicitHeight = 945
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitWidth = 1427
      ExplicitHeight = 917
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1063
        Height = 743
        Hint = ''
        HeaderTitleAlign = taCenter
        DataSource = dsUsuarios
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        ReadOnly = True
        WebOptions.Paged = False
        LoadMask.Message = 'Carregando dados...'
        RowHeight = 24
        ForceFit = True
        TrackOver = False
        Align = alClient
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 0
        ParentColor = False
        Color = clGradientInactiveCaption
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Matricula'
            Title.Alignment = taCenter
            Title.Caption = 'Matr'#237'cula'
            Width = 139
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 441
            Font.Height = -16
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Departamento'
            Title.Alignment = taCenter
            Title.Caption = 'Departamento'
            Width = 180
            Font.Height = -16
            Font.Name = 'Calibri'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Cargo'
            Title.Alignment = taCenter
            Title.Caption = 'Cargo'
            Width = 272
            Font.Name = 'Calibri'
            ReadOnly = True
          end>
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 0
        Width = 1063
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
        ExplicitWidth = 1427
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
          TabOrder = 1
          OnClick = bPesquisaClick
        end
        object cPesquisa: TUniEdit
          Left = 0
          Top = 0
          Width = 520
          Height = 27
          Hint = ''
          BorderStyle = ubsInset
          Text = ''
          Align = alLeft
          TabOrder = 2
          EmptyText = 'Pesquisar'
        end
      end
    end
    object aFicha: TUniTabSheet
      Hint = ''
      Caption = 'Dados do Us'#250'ario'
      ExplicitWidth = 1427
      ExplicitHeight = 917
      object sFicha: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1063
        Height = 770
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'Pasta'#39#13#10'}')
        TabOrder = 0
        ExplicitHeight = 800
        DesignSize = (
          1044
          768)
        ScrollHeight = 1008
        ScrollWidth = 647
        object pFicha: TUniPanel
          Left = 39
          Top = 11
          Width = 966
          Height = 743
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsSolid
          TitleAlign = taCenter
          Title = 'CADASTRO DE USU'#193'RIOS'
          Caption = ''
          object cNome: TUniDBEdit
            Left = 11
            Top = 39
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Nome'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 2
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Nome'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cCargo: TUniDBEdit
            Left = 11
            Top = 66
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Funcao'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Cargo'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cDepart: TUniDBEdit
            Left = 11
            Top = 93
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Setor'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 4
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Departamento'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cPswrd: TUniDBEdit
            Left = 11
            Top = 147
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Chave'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Senha'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cMatricula: TUniDBEdit
            Left = 11
            Top = 12
            Width = 326
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Matricula'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 1
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Matr'#237'cula'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
            OnChangeValue = cMatriculaChangeValue
          end
          object cNivel: TUniDBLookupComboBox
            Left = 11
            Top = 120
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsNiveis
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Nivel'
            DataSource = dsUsuarios
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'N'#237'vel de Acesso'
            FieldLabelSeparator = ' '
          end
          object UniPanel3: TUniPanel
            Tag = 1
            Left = 611
            Top = 9
            Width = 341
            Height = 150
            Hint = ''
            ShowHint = True
            TabOrder = 7
            BorderStyle = ubsInset
            TitleVisible = True
            TitleAlign = taCenter
            Title = 'Foto'
            Caption = ''
            Color = clWindow
            DesignSize = (
              341
              150)
            object iFoto: TUniImage
              Left = 113
              Top = 3
              Width = 120
              Height = 120
              Hint = ''
              ShowHint = True
              Center = True
              Stretch = True
              Anchors = [akLeft, akTop, akBottom]
              Transparent = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'CaixaSimples'#39';'#13#10'}')
              OnMouseEnter = iFotoMouseEnter
            end
            object bFoto: TUniFileUploadButton
              Left = 3
              Top = 3
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Anchors = [akRight, akBottom]
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
              OnCompleted = bFotoCompleted
            end
          end
          object UniPanel4: TUniPanel
            Tag = 1
            Left = 611
            Top = 165
            Width = 342
            Height = 562
            Hint = ''
            ShowHint = True
            TabOrder = 8
            BorderStyle = ubsSolid
            TitleVisible = True
            TitleAlign = taCenter
            Title = 'Permiss'#245'es'
            Caption = ''
            object tMenu: TUniTreeView
              Left = 0
              Top = 32
              Width = 342
              Height = 530
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Items.FontData = {0100000000}
              AutoExpand = True
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                  '= '#39'Painel'#39';'#13#10'}')
              Font.Name = 'Calibri'
              ParentFont = False
              Align = alClient
              TabOrder = 1
              Color = clWindow
              BorderStyle = ubsSingle
              UseCheckBox = True
              UseArrows = True
              OnClick = tMenuClick
              ExplicitLeft = 1
              ExplicitTop = 31
              ExplicitWidth = 340
              ExplicitHeight = 328
            end
            object UniPanel5: TUniPanel
              Left = 0
              Top = 0
              Width = 342
              Height = 32
              Hint = ''
              ShowHint = True
              Align = alTop
              TabOrder = 2
              BorderStyle = ubsInset
              ShowCaption = False
              TitleAlign = taCenter
              Title = 'Permiss'#245'es'
              Caption = 'UniPanel5'
              ExplicitLeft = 1
              ExplicitTop = 1
              ExplicitWidth = 340
              object bSelTudo: TUniSpeedButton
                Left = 191
                Top = 1
                Width = 30
                Height = 30
                Hint = ''
                ShowHint = True
                Caption = ''
                Align = alRight
                ParentFont = False
                ParentColor = False
                IconAlign = iaTop
                Images = UniMainModule.imgBotoes
                ImageIndex = 4
                TabOrder = 1
                OnClick = bSelTudoClick
                ExplicitLeft = 164
              end
              object bDesTudo: TUniSpeedButton
                Left = 221
                Top = 1
                Width = 30
                Height = 30
                Hint = ''
                ShowHint = True
                Caption = ''
                Align = alRight
                ParentFont = False
                ParentColor = False
                IconAlign = iaTop
                Images = UniMainModule.imgBotoes
                ImageIndex = 6
                TabOrder = 2
                OnClick = bDesTudoClick
                ExplicitLeft = 199
              end
              object bExpand: TUniSpeedButton
                Left = 251
                Top = 1
                Width = 30
                Height = 30
                Hint = ''
                ShowHint = True
                Caption = ''
                Align = alRight
                ParentFont = False
                ParentColor = False
                IconAlign = iaTop
                Images = UniMainModule.imgBotoes
                ImageIndex = 11
                TabOrder = 3
                OnClick = bExpandClick
                ExplicitLeft = 234
              end
              object bRecolhe: TUniSpeedButton
                Left = 281
                Top = 1
                Width = 30
                Height = 30
                Hint = ''
                ShowHint = True
                Caption = ''
                Align = alRight
                ParentFont = False
                ParentColor = False
                IconAlign = iaTop
                Images = UniMainModule.imgBotoes
                ImageIndex = 12
                TabOrder = 4
                OnClick = bRecolheClick
                ExplicitLeft = 269
              end
              object bRecarga: TUniSpeedButton
                Left = 311
                Top = 1
                Width = 30
                Height = 30
                Hint = ''
                ShowHint = True
                Caption = ''
                Align = alRight
                ParentFont = False
                ParentColor = False
                IconAlign = iaTop
                Images = UniMainModule.imgBotoes
                ImageIndex = 14
                TabOrder = 5
                ExplicitLeft = 304
              end
            end
          end
          object UniDBEdit1: TUniDBEdit
            Left = 11
            Top = 174
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Email'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'Email'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object cRepresent: TUniDBLookupComboBox
            Left = 11
            Top = 201
            Width = 584
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome'
            ListSource = dsRepresentantes
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Codigo_Representante'
            DataSource = dsUsuarios
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'N'#237'vel de Acesso'
            FieldLabelSeparator = ' '
          end
          object UniDBEdit2: TUniDBEdit
            Left = 11
            Top = 228
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Lucro_Min'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 11
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Lucro % M'#237'nimo'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniDBEdit3: TUniDBEdit
            Left = 236
            Top = 228
            Width = 220
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Lucro_Max'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 12
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Lucro % Max'#237'mo'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object uTradutor: TUniDBLookupComboBox
            Left = 343
            Top = 12
            Width = 252
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsIdiomas
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Idioma'
            DataSource = dsUsuarios
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'Idioma'
            FieldLabelSeparator = ' '
          end
          object UniGroupBox1: TUniGroupBox
            Left = 12
            Top = 275
            Width = 274
            Height = 261
            Cursor = crArrow
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Diversos'
            TabOrder = 14
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 6
              Top = 18
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Desativado'
              DataSource = dsUsuarios
              Caption = 'Desativado'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 6
              Top = 37
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Comprador'
              DataSource = dsUsuarios
              Caption = 'Comprador'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox3: TUniDBCheckBox
              Left = 6
              Top = 56
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Gerente'
              DataSource = dsUsuarios
              Caption = 'Gerente'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox4: TUniDBCheckBox
              Left = 6
              Top = 75
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Diretor'
              DataSource = dsUsuarios
              Caption = 'Diretor'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox5: TUniDBCheckBox
              Left = 6
              Top = 113
              Width = 185
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Chave_Cadastro'
              DataSource = dsUsuarios
              Caption = 'Informar senha no primeiro login'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox6: TUniDBCheckBox
              Left = 6
              Top = 132
              Width = 238
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem'
              DataSource = dsUsuarios
              Caption = 'Checar vencimentos na entrada do sistema'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox7: TUniDBCheckBox
              Left = 6
              Top = 151
              Width = 173
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Backup_Automatico'
              DataSource = dsUsuarios
              Caption = 'Executar backup autom'#225'tico'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox8: TUniDBCheckBox
              Left = 6
              Top = 94
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Call_Center'
              DataSource = dsUsuarios
              Caption = 'Atendente'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox9: TUniDBCheckBox
              Left = 6
              Top = 170
              Width = 225
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Call_CenterTodos'
              DataSource = dsUsuarios
              Caption = 'Visualiza pedidos de todos os atendentes'
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox10: TUniDBCheckBox
              Left = 6
              Top = 189
              Width = 120
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Baixa_Automatica'
              DataSource = dsUsuarios
              Caption = 'Baixa autom'#225'tica'
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
            end
          end
          object UniGroupBox2: TUniGroupBox
            Left = 307
            Top = 275
            Width = 260
            Height = 261
            Cursor = crArrow
            Hint = ''
            ShowHint = True
            Caption = 'Checagens'
            TabOrder = 15
            object UniDBCheckBox11: TUniDBCheckBox
              Left = 6
              Top = 18
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_Demurrage'
              DataSource = dsUsuarios
              Caption = 'Demurrage'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox12: TUniDBCheckBox
              Left = 6
              Top = 37
              Width = 121
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_ContratoClientes'
              DataSource = dsUsuarios
              Caption = 'Contrato Clientes'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox13: TUniDBCheckBox
              Left = 6
              Top = 56
              Width = 76
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_Radar'
              DataSource = dsUsuarios
              Caption = 'RADAR'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox14: TUniDBCheckBox
              Left = 6
              Top = 75
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_Viculacoes'
              DataSource = dsUsuarios
              Caption = 'Vincula'#231#245'es'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox15: TUniDBCheckBox
              Left = 6
              Top = 113
              Width = 144
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_PrazoArquivos'
              DataSource = dsUsuarios
              Caption = 'Prazo entrega arquivos'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox17: TUniDBCheckBox
              Left = 6
              Top = 132
              Width = 115
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_EstoqueMinimo'
              DataSource = dsUsuarios
              Caption = 'Estoque M'#237'nimo'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox18: TUniDBCheckBox
              Left = 6
              Top = 94
              Width = 158
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_PrazoRetorno'
              DataSource = dsUsuarios
              Caption = 'Prazo retorno NF (ICMS)'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox19: TUniDBCheckBox
              Left = 6
              Top = 151
              Width = 221
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_ClientesMovimento'
              DataSource = dsUsuarios
              Caption = 'Clientes sem movimenta'#231#227'o no per'#237'odo'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox20: TUniDBCheckBox
              Left = 6
              Top = 170
              Width = 207
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_ProcessoContainer'
              DataSource = dsUsuarios
              Caption = 'Processo sem container cadastrado'
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox16: TUniDBCheckBox
              Left = 6
              Top = 189
              Width = 210
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_ClientesAtraso'
              DataSource = dsUsuarios
              Caption = 'Clientes com pagamento em atraso'
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox21: TUniDBCheckBox
              Left = 6
              Top = 208
              Width = 138
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_Exoneracao'
              DataSource = dsUsuarios
              Caption = 'Exonera'#231#227'o do ICMS'
              TabOrder = 11
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox22: TUniDBCheckBox
              Left = 6
              Top = 227
              Width = 207
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Checagem_DIDA'
              DataSource = dsUsuarios
              Caption = 'Vencimento de Emiss'#227'o  NF (DI/DA)'
              TabOrder = 12
              ParentColor = False
              Color = clBtnFace
            end
          end
          object UniGroupBox3: TUniGroupBox
            Left = 12
            Top = 551
            Width = 274
            Height = 175
            Cursor = crArrow
            Hint = ''
            ShowHint = True
            Caption = 'Abas visiveis no gerenciador de Pedidos'
            TabOrder = 16
            object UniDBCheckBox23: TUniDBCheckBox
              Left = 6
              Top = 18
              Width = 170
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_VerLib'
              DataSource = dsUsuarios
              Caption = 'Liberado para faturamento'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox24: TUniDBCheckBox
              Left = 6
              Top = 37
              Width = 170
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_VerCof'
              DataSource = dsUsuarios
              Caption = 'Aguardando confer'#234'ncia'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox25: TUniDBCheckBox
              Left = 6
              Top = 56
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_VerSep'
              DataSource = dsUsuarios
              Caption = 'Separados'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox26: TUniDBCheckBox
              Left = 6
              Top = 75
              Width = 167
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_VerAgFat'
              DataSource = dsUsuarios
              Caption = 'Aguardando faturamento'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox27: TUniDBCheckBox
              Left = 6
              Top = 113
              Width = 167
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_VerDesp'
              DataSource = dsUsuarios
              Caption = 'Despachados'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox28: TUniDBCheckBox
              Left = 6
              Top = 132
              Width = 171
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_AlterarPed'
              DataSource = dsUsuarios
              Caption = 'Permitido alterar pedidos'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
            end
            object UniDBCheckBox30: TUniDBCheckBox
              Left = 6
              Top = 94
              Width = 78
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'PedidoRep_VerFat'
              DataSource = dsUsuarios
              Caption = 'Faturados'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
            end
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 391
          Top = 984
          Width = 256
          Height = 24
          Hint = ''
          ParentColor = False
          TabOrder = 1
        end
      end
    end
  end
  object dsUsuarios: TDataSource
    DataSet = Usuarios
    Left = 39
    Top = 179
  end
  object dsPermissoes: TDataSource
    DataSet = Permissoes
    Left = 39
    Top = 275
  end
  object dsNiveis: TDataSource
    DataSet = Niveis
    Left = 39
    Top = 375
  end
  object Usuarios: TFDQuery
    BeforePost = UsuariosBeforePost
    BeforeDelete = UsuariosBeforeDelete
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Usuarios')
    Left = 39
    Top = 131
    object UsuariosMatricula: TStringField
      FieldName = 'Matricula'
      Origin = 'Matricula'
      Size = 15
    end
    object UsuariosEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object UsuariosDesativado: TBooleanField
      FieldName = 'Desativado'
      Origin = 'Desativado'
    end
    object UsuariosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 50
    end
    object UsuariosSetor: TStringField
      FieldName = 'Setor'
      Origin = 'Setor'
      Size = 30
    end
    object UsuariosFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'Funcao'
      Size = 60
    end
    object UsuariosChave: TStringField
      FieldName = 'Chave'
      Origin = 'Chave'
      Size = 30
    end
    object UsuariosChave_Cadastro: TBooleanField
      FieldName = 'Chave_Cadastro'
      Origin = 'Chave_Cadastro'
    end
    object UsuariosNivel: TSmallintField
      FieldName = 'Nivel'
      Origin = 'Nivel'
    end
    object UsuariosBaixa_Automatica: TBooleanField
      FieldName = 'Baixa_Automatica'
      Origin = 'Baixa_Automatica'
    end
    object UsuariosBackup_Automatico: TBooleanField
      FieldName = 'Backup_Automatico'
      Origin = 'Backup_Automatico'
    end
    object UsuariosCodigo_Representante: TSmallintField
      FieldName = 'Codigo_Representante'
      Origin = 'Codigo_Representante'
    end
    object UsuariosCall_CenterTodos: TBooleanField
      FieldName = 'Call_CenterTodos'
      Origin = 'Call_CenterTodos'
    end
    object UsuariosSistema_Externo: TStringField
      FieldName = 'Sistema_Externo'
      Origin = 'Sistema_Externo'
      Size = 15
    end
    object UsuariosSistema_ExternoUsuario: TStringField
      FieldName = 'Sistema_ExternoUsuario'
      Origin = 'Sistema_ExternoUsuario'
      Size = 60
    end
    object UsuariosSistema_ExternoChave: TStringField
      FieldName = 'Sistema_ExternoChave'
      Origin = 'Sistema_ExternoChave'
      Size = 30
    end
    object UsuariosLucro_Min: TFMTBCDField
      FieldName = 'Lucro_Min'
      Origin = 'Lucro_Min'
      Precision = 18
      Size = 6
    end
    object UsuariosLucro_Max: TFMTBCDField
      FieldName = 'Lucro_Max'
      Origin = 'Lucro_Max'
      Precision = 18
      Size = 6
    end
    object UsuariosFoto: TStringField
      FieldName = 'Foto'
      Origin = 'Foto'
      Size = 120
    end
    object UsuariosDepartamento: TStringField
      FieldName = 'Departamento'
      Origin = 'Departamento'
      Size = 60
    end
    object UsuariosCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Size = 60
    end
    object UsuariosEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Size = 60
    end
    object UsuariosIdioma: TStringField
      FieldName = 'Idioma'
      Origin = 'Idioma'
      Size = 10
    end
    object UsuariosFinanceiro_Operacional: TBooleanField
      FieldName = 'Financeiro_Operacional'
      Origin = 'Financeiro_Operacional'
    end
    object UsuariosChecagem: TBooleanField
      FieldName = 'Checagem'
      Origin = 'Checagem'
    end
    object UsuariosCall_Center: TBooleanField
      FieldName = 'Call_Center'
      Origin = 'Call_Center'
    end
    object UsuariosSistema_ExternoSenha: TStringField
      FieldName = 'Sistema_ExternoSenha'
      Origin = 'Sistema_ExternoSenha'
      Size = 30
    end
    object UsuariosComprador: TBooleanField
      FieldName = 'Comprador'
      Origin = 'Comprador'
    end
    object UsuariosGerente: TBooleanField
      FieldName = 'Gerente'
      Origin = 'Gerente'
    end
    object UsuariosDiretor: TBooleanField
      FieldName = 'Diretor'
      Origin = 'Diretor'
    end
    object UsuariosPedidoRep_VerLib: TBooleanField
      FieldName = 'PedidoRep_VerLib'
      Origin = 'PedidoRep_VerLib'
    end
    object UsuariosPedidoRep_VerCof: TBooleanField
      FieldName = 'PedidoRep_VerCof'
      Origin = 'PedidoRep_VerCof'
    end
    object UsuariosPedidoRep_VerFat: TBooleanField
      FieldName = 'PedidoRep_VerFat'
      Origin = 'PedidoRep_VerFat'
    end
    object UsuariosPedidoRep_VerDesp: TBooleanField
      FieldName = 'PedidoRep_VerDesp'
      Origin = 'PedidoRep_VerDesp'
    end
    object UsuariosPedidoRep_VerSep: TBooleanField
      FieldName = 'PedidoRep_VerSep'
      Origin = 'PedidoRep_VerSep'
    end
    object UsuariosPedidoRep_VerAgFat: TBooleanField
      FieldName = 'PedidoRep_VerAgFat'
      Origin = 'PedidoRep_VerAgFat'
    end
    object UsuariosChecagem_Demurrage: TBooleanField
      FieldName = 'Checagem_Demurrage'
      Origin = 'Checagem_Demurrage'
    end
    object UsuariosChecagem_ContratoClientes: TBooleanField
      FieldName = 'Checagem_ContratoClientes'
      Origin = 'Checagem_ContratoClientes'
    end
    object UsuariosChecagem_Radar: TBooleanField
      FieldName = 'Checagem_Radar'
      Origin = 'Checagem_Radar'
    end
    object UsuariosChecagem_Viculacoes: TBooleanField
      FieldName = 'Checagem_Viculacoes'
      Origin = 'Checagem_Viculacoes'
    end
    object UsuariosChecagem_PrazoRetorno: TBooleanField
      FieldName = 'Checagem_PrazoRetorno'
      Origin = 'Checagem_PrazoRetorno'
    end
    object UsuariosChecagem_ProcessoContainer: TBooleanField
      FieldName = 'Checagem_ProcessoContainer'
      Origin = 'Checagem_ProcessoContainer'
    end
    object UsuariosChecagem_PrazoArquivos: TBooleanField
      FieldName = 'Checagem_PrazoArquivos'
      Origin = 'Checagem_PrazoArquivos'
    end
    object UsuariosChecagem_EstoqueMinimo: TBooleanField
      FieldName = 'Checagem_EstoqueMinimo'
      Origin = 'Checagem_EstoqueMinimo'
    end
    object UsuariosChecagem_ClientesAtraso: TBooleanField
      FieldName = 'Checagem_ClientesAtraso'
      Origin = 'Checagem_ClientesAtraso'
    end
    object UsuariosChecagem_ClientesMovimento: TBooleanField
      FieldName = 'Checagem_ClientesMovimento'
      Origin = 'Checagem_ClientesMovimento'
    end
    object UsuariosChecagem_Exoneracao: TBooleanField
      FieldName = 'Checagem_Exoneracao'
      Origin = 'Checagem_Exoneracao'
    end
    object UsuariosChecagem_DIDA: TBooleanField
      FieldName = 'Checagem_DIDA'
      Origin = 'Checagem_DIDA'
    end
    object UsuariosPedidoRep_AlterarPed: TBooleanField
      FieldName = 'PedidoRep_AlterarPed'
      Origin = 'PedidoRep_AlterarPed'
    end
    object UsuariosChecagem_Pagamentos: TBooleanField
      FieldName = 'Checagem_Pagamentos'
      Origin = 'Checagem_Pagamentos'
    end
  end
  object Permissoes: TFDQuery
    AutoCalcFields = False
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * '
      'FROM UsuariosPermissoes'
      'ORDER BY Indice')
    Left = 39
    Top = 227
  end
  object Niveis: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM UsuariosNivel')
    Left = 39
    Top = 327
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 434
  end
  object Representantes: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      'from Destinatarios'
      'where Representante = 1')
    Left = 39
    Top = 429
  end
  object dsRepresentantes: TDataSource
    DataSet = Representantes
    Left = 38
    Top = 482
  end
  object Idiomas: TFDQuery
    AutoCalcFields = False
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from Idiomas')
    Left = 39
    Top = 536
  end
  object dsIdiomas: TDataSource
    DataSet = Idiomas
    Left = 38
    Top = 589
  end
end
