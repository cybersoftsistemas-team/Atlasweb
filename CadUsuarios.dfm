object fCadUsuarios: TfCadUsuarios
  Left = 0
  Top = 0
  Width = 1212
  Height = 751
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1212
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 0
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
    Width = 1212
    Height = 716
    Hint = ''
    BodyRTL = False
    ActivePage = aFicha
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 1
    ExplicitTop = 91
    ExplicitWidth = 1103
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1204
        Height = 661
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsUsuarios
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
        Color = clGradientInactiveCaption
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Matricula'
            Title.Alignment = taCenter
            Title.Caption = 'Matr'#237'cula'
            Title.Font.Height = -13
            Title.Font.Style = [fsBold]
            Width = 139
            Font.Name = 'Calibri'
            ReadOnly = True
          end
          item
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Height = -13
            Title.Font.Style = [fsBold]
            Width = 441
            Font.Height = -16
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Departamento'
            Title.Alignment = taCenter
            Title.Caption = 'Departamento'
            Title.Font.Height = -13
            Title.Font.Style = [fsBold]
            Width = 180
            Font.Height = -16
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Cargo'
            Title.Alignment = taCenter
            Title.Caption = 'Cargo'
            Title.Font.Height = -13
            Title.Font.Style = [fsBold]
            Width = 272
            Font.Name = 'Calibri'
          end>
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 0
        Width = 1204
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        Caption = ''
        Color = clNone
        object bPesquisa: TUniSpeedButton
          Left = 521
          Top = 1
          Width = 25
          Height = 25
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
          Left = 1
          Top = 1
          Width = 520
          Height = 25
          Hint = ''
          BorderStyle = ubsNone
          Text = ''
          Align = alLeft
          TabOrder = 2
          Color = clWhite
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
        Width = 1204
        Height = 688
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's = '#39'Pasta'#39#13#10'}')
        TabOrder = 0
        DesignSize = (
          1202
          686)
        ScrollHeight = 609
        object pFicha: TUniPanel
          Left = 136
          Top = 12
          Width = 782
          Height = 597
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
            Top = 76
            Width = 341
            Height = 55
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
            FieldLabelWidth = 50
            FieldLabelAlign = laTop
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cCargo: TUniDBEdit
            Left = 11
            Top = 132
            Width = 341
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Cargo'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Cargo'
            FieldLabelWidth = 50
            FieldLabelAlign = laTop
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cDepart: TUniDBEdit
            Left = 11
            Top = 188
            Width = 341
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Departamento'
            DataSource = dsUsuarios
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 4
            InputMask.MaskChar = ' '
            InputMask.UnmaskText = True
            InputMask.RemoveWhiteSpace = True
            FieldLabel = 'Departamento'
            FieldLabelWidth = 50
            FieldLabelAlign = laTop
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cPswrd: TUniDBEdit
            Left = 11
            Top = 299
            Width = 341
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Chave'
            DataSource = dsUsuarios
            PasswordChar = '*'
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'Senha'
            FieldLabelWidth = 50
            FieldLabelAlign = laTop
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cMatricula: TUniDBEdit
            Left = 11
            Top = 20
            Width = 341
            Height = 55
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
            FieldLabelWidth = 50
            FieldLabelAlign = laTop
            SelectOnFocus = True
            BorderStyle = ubsSolid
            OnChangeValue = cMatriculaChangeValue
            BorderStyle = ubsDefault
          end
          object cNivel: TUniDBLookupComboBox
            Left = 11
            Top = 243
            Width = 341
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsNiveis
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'Nivel'
            DataSource = dsUsuarios
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'N'#237'vel de Acesso'
            FieldLabelAlign = laTop
            BorderStyle = ubsDefault
          end
          object UniLabel1: TUniLabel
            Left = 11
            Top = 408
            Width = 24
            Height = 15
            Hint = ''
            ShowHint = True
            Caption = 'Foto'
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 8
          end
          object tMenu: TUniTreeView
            Left = 372
            Top = 34
            Width = 396
            Height = 515
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Items.FontData = {0100000000}
            AutoExpand = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 9
            Color = clWindow
            BorderStyle = ubsNone
            UseCheckBox = True
            UseArrows = True
            OnClick = tMenuClick
          end
          object UniLabel3: TUniLabel
            Left = 373
            Top = 15
            Width = 125
            Height = 13
            Hint = ''
            ShowHint = True
            Caption = 'Permiss'#245'es de Acesso'
            ParentFont = False
            Font.Style = [fsBold]
            TabOrder = 10
          end
          object bSelTudo: TUniSpeedButton
            Left = 626
            Top = 7
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            ParentFont = False
            ParentColor = False
            IconAlign = iaTop
            Images = UniMainModule.imgBotoes
            ImageIndex = 4
            TabOrder = 11
            OnClick = bSelTudoClick
          end
          object bDesTudo: TUniSpeedButton
            Left = 655
            Top = 7
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            ParentFont = False
            ParentColor = False
            IconAlign = iaTop
            Images = UniMainModule.imgBotoes
            ImageIndex = 6
            TabOrder = 12
            OnClick = bDesTudoClick
          end
          object bExpand: TUniSpeedButton
            Left = 684
            Top = 7
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            ParentFont = False
            ParentColor = False
            IconAlign = iaTop
            Images = UniMainModule.imgBotoes
            ImageIndex = 11
            TabOrder = 13
            OnClick = bExpandClick
          end
          object bRecolhe: TUniSpeedButton
            Left = 713
            Top = 7
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            ParentFont = False
            ParentColor = False
            IconAlign = iaTop
            Images = UniMainModule.imgBotoes
            ImageIndex = 12
            TabOrder = 15
            OnClick = bRecolheClick
          end
          object iFoto: TUniImage
            Left = 11
            Top = 429
            Width = 166
            Height = 162
            Hint = ''
            ShowHint = True
            Center = True
            Stretch = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CaixaSimples'#39';'#13#10'}')
            OnMouseEnter = iFotoMouseEnter
          end
          object bFoto: TUniSpeedButton
            Left = 140
            Top = 544
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            ParentFont = False
            ParentColor = False
            IconAlign = iaTop
            Images = UniMainModule.imgBotoes
            ImageIndex = 13
            TabOrder = 7
            OnClick = bFotoClick
          end
          object bRecarga: TUniSpeedButton
            Left = 742
            Top = 7
            Width = 25
            Height = 25
            Hint = ''
            ShowHint = True
            Caption = ''
            ParentFont = False
            ParentColor = False
            IconAlign = iaTop
            Images = UniMainModule.imgBotoes
            ImageIndex = 14
            TabOrder = 16
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 11
            Top = 376
            Width = 134
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Desativado'
            DataSource = dsUsuarios
            Caption = 'Usu'#225'rio desativado'
            TabOrder = 17
            ParentColor = False
            Color = clBtnFace
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
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 56
    Top = 440
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
    Left = 100
    Top = 75
  end
end

