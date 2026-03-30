object fCadUsuarios: TfCadUsuarios
  Left = 0
  Top = 0
  Width = 1435
  Height = 980
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1435
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
    Width = 1435
    Height = 945
    Hint = ''
    BodyRTL = False
    ActivePage = aLista
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1427
        Height = 890
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
        Width = 1427
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
      object sFicha: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1427
        Height = 917
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'Pasta'#39#13#10'}')
        TabOrder = 0
        DesignSize = (
          1425
          915)
        ScrollHeight = 884
        object pFicha: TUniPanel
          Left = 126
          Top = 14
          Width = 965
          Height = 870
          Hint = ''
          Enabled = False
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
              ' = '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'CADASTRO DE USU'#193'RIOS'
          Caption = ''
          Color = clTeal
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
            Top = 174
            Width = 342
            Height = 671
            Hint = ''
            ShowHint = True
            TabOrder = 8
            ClientEvents.UniEvents.Strings = (
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' '#13#10'}')
            BorderStyle = ubsInset
            TitleVisible = True
            TitleAlign = taCenter
            Title = 'Permiss'#245'es'
            Caption = ''
            object tMenu: TUniTreeView
              AlignWithMargins = True
              Left = 1
              Top = 40
              Width = 340
              Height = 613
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Items.FontData = {0100000000}
              AutoExpand = True
              Font.Name = 'Calibri'
              ParentFont = False
              TabOrder = 1
              Color = clWindow
              BorderStyle = ubsInset
              UseCheckBox = True
              UseArrows = True
              OnClick = tMenuClick
            end
            object bSelTudo: TUniSpeedButton
              Left = 93
              Top = 4
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Caption = ''
              ParentFont = False
              ParentColor = False
              IconAlign = iaTop
              Images = UniMainModule.imgBotoes
              ImageIndex = 4
              TabOrder = 2
              OnClick = bSelTudoClick
            end
            object bDesTudo: TUniSpeedButton
              Left = 127
              Top = 4
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Caption = ''
              ParentFont = False
              ParentColor = False
              IconAlign = iaTop
              Images = UniMainModule.imgBotoes
              ImageIndex = 6
              TabOrder = 3
              OnClick = bDesTudoClick
            end
            object bExpand: TUniSpeedButton
              Left = 161
              Top = 4
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Caption = ''
              ParentFont = False
              ParentColor = False
              IconAlign = iaTop
              Images = UniMainModule.imgBotoes
              ImageIndex = 11
              TabOrder = 4
              OnClick = bExpandClick
            end
            object bRecolhe: TUniSpeedButton
              Left = 195
              Top = 4
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Caption = ''
              ParentFont = False
              ParentColor = False
              IconAlign = iaTop
              Images = UniMainModule.imgBotoes
              ImageIndex = 12
              TabOrder = 5
              OnClick = bRecolheClick
            end
            object bRecarga: TUniSpeedButton
              Left = 229
              Top = 4
              Width = 30
              Height = 30
              Hint = ''
              ShowHint = True
              Caption = ''
              ParentFont = False
              ParentColor = False
              IconAlign = iaTop
              Images = UniMainModule.imgBotoes
              ImageIndex = 14
              TabOrder = 6
            end
          end
          object UniGroupBox1: TUniGroupBox
            Left = 12
            Top = 275
            Width = 287
            Height = 268
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros Diversos'
            TabOrder = 9
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
            Left = 317
            Top = 275
            Width = 278
            Height = 268
            Hint = ''
            ShowHint = True
            Caption = 'Checagens'
            TabOrder = 10
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
              DataField = 'Checagem_ClientesAtraso'
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
            TabOrder = 11
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
            TabOrder = 12
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
            TabOrder = 13
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
            TabOrder = 14
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Lucro % Max'#237'mo'
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsInset
          end
          object UniGroupBox3: TUniGroupBox
            Left = 12
            Top = 559
            Width = 287
            Height = 175
            Hint = ''
            ShowHint = True
            Caption = 'Abas visiveis no gerenciador de Pedidos'
            TabOrder = 15
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
  end
  object Permissoes: TFDQuery
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
    Left = 39
    Top = 79
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
end
