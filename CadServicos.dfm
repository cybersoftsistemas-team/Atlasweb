object fCadServicos: TfCadServicos
  Left = 0
  Top = 0
  Width = 1025
  Height = 1114
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
        ClientEvents.UniEvents.Strings = (
             'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' + 
             's = '#39'PastaInterna'#39';'#13#10'}')
    Left = 0
    Top = 35
    Width = 1025
    Height = 1079
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 1374
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object Grade: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1017
        Height = 1024
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsServicos
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
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 100
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 693
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Industria'
            Title.Alignment = taCenter
            Title.Caption = 'Industria'
            Title.Font.Style = [fsBold]
            Width = 60
            Font.Name = 'Calibri'
            Alignment = taCenter
          end
          item
            FieldName = 'Ativo'
            Title.Alignment = taCenter
            Title.Caption = 'Ativo'
            Title.Font.Style = [fsBold]
            Width = 60
            Font.Name = 'Calibri'
            Alignment = taCenter
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1017
        Height = 27
        Hint = ''
        Align = alTop
        TabOrder = 1
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
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1017
        Height = 1051
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitLeft = 136
        ExplicitTop = 3
        ExplicitWidth = 937
        ExplicitHeight = 938
        DesignSize = (
          1015
          1049)
        ScrollHeight = 984
        object pFicha1: TUniPanel
          Left = 113
          Top = 16
          Width = 725
          Height = 968
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
            Left = 12
            Top = 10
            Width = 102
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Codigo'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'C'#243'digo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cAtivo: TUniDBCheckBox
            Left = 204
            Top = 42
            Width = 95
            Height = 18
            Hint = ''
            ShowHint = True
            DataField = 'Desativado'
            DataSource = dsServicos
            Caption = 'Desativado'
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cDescricao: TUniDBEdit
            Left = 12
            Top = 66
            Width = 700
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Descricao'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object cIndustria: TUniDBCheckBox
            Left = 120
            Top = 42
            Width = 78
            Height = 18
            Hint = ''
            ShowHint = True
            DataField = 'Industria'
            DataSource = dsServicos
            Caption = 'Industria'
            ParentFont = False
            Font.Height = -13
            TabOrder = 4
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cPIS_Recuperar: TUniDBLookupComboBox
            Left = 12
            Top = 452
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'PIS_Recuperar'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'PIS a Recuperar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cPIS_Recolher: TUniDBLookupComboBox
            Left = 12
            Top = 397
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'PIS_Recolher'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'PIS a Recolher'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cCOFINS_Recuperar: TUniDBLookupComboBox
            Left = 12
            Top = 562
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'COFINS_Recuperar'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'COFINS a Recuperar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cCOFINS_Recolher: TUniDBLookupComboBox
            Left = 12
            Top = 507
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'COFINS_Recolher'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'COFINS a Recolher'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cCSLL_Recuperar: TUniDBLookupComboBox
            Left = 12
            Top = 782
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'CSLL_Recuperar'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'CSLL a Recuperar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cCSLL_Recolher: TUniDBLookupComboBox
            Left = 12
            Top = 727
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'CSLL_Recolher'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'CSLL a Recolher'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cIR_Recuperar: TUniDBLookupComboBox
            Left = 12
            Top = 672
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'IR_Recuperar'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'IR a Recuperar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cIR_Recolher: TUniDBLookupComboBox
            Left = 12
            Top = 617
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'IR_Recolher'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 14
            Color = clWindow
            FieldLabel = 'IR a Recolher'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cINSS_Recuperar: TUniDBLookupComboBox
            Left = 12
            Top = 892
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'INSS_Recuperar'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'INSS a Recuperar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object cINSS_Recolher: TUniDBLookupComboBox
            Left = 12
            Top = 837
            Width = 565
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Descricao;Codigo'
            ListSource = dsTributos
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsSolid
            DataField = 'INSS_Recolher'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 13
            Color = clWindow
            FieldLabel = 'INSS a Recolher'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
            BorderStyle = ubsDefault
          end
          object UniDBEdit1: TUniDBEdit
            Left = 12
            Top = 342
            Width = 145
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_PIS'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 15
            FieldLabel = 'PIS n'#227'o cumulativo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit2: TUniDBEdit
            Left = 166
            Top = 342
            Width = 145
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Aliquota_COFINS'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 16
            FieldLabel = 'COFINS n'#227'o cumulativo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit3: TUniDBEdit
            Left = 586
            Top = 397
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_PIS'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 17
            FieldLabel = 'Limite do PIS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit4: TUniDBEdit
            Left = 586
            Top = 507
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_COFINS'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 18
            FieldLabel = 'Limite da COFINS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit5: TUniDBEdit
            Left = 586
            Top = 617
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_COFINS'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 19
            FieldLabel = 'Limite do IR'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit6: TUniDBEdit
            Left = 586
            Top = 727
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_CSLL'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 20
            FieldLabel = 'Limite da CSLL'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object UniDBEdit7: TUniDBEdit
            Left = 586
            Top = 837
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Limite_INSS'
            DataSource = dsServicos
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 21
            FieldLabel = 'Limite do INSS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
          end
          object clCSTCOFINS_Entrada: TUniDBLookupComboBox
            Left = 12
            Top = 176
            Width = 700
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTPIS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'CSTPIS_Saida'
            DataSource = dsServicos
            TabOrder = 22
            Color = clWindow
            FieldLabel = 'CST PIS (Sa'#237'da)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cCSTPIS_Entrada: TUniDBLookupComboBox
            Left = 12
            Top = 121
            Width = 700
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTPIS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'CSTPIS_Entrada'
            DataSource = dsServicos
            TabOrder = 23
            Color = clWindow
            FieldLabel = 'CST PIS (Entrada)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cCSTCOFINS_Entrada: TUniDBLookupComboBox
            Left = 12
            Top = 231
            Width = 700
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTCOFINS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'CSTCOFINS_Entrada'
            DataSource = dsServicos
            TabOrder = 24
            Color = clWindow
            FieldLabel = 'CST COFINS (Entrada)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
          object cCSTCOFINS_Saida: TUniDBLookupComboBox
            Left = 12
            Top = 286
            Width = 700
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            ListSource = dsCSTCOFINS
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'CSTCOFINS_Saida'
            DataSource = dsServicos
            TabOrder = 25
            Color = clWindow
            FieldLabel = 'CST COFINS (Sa'#237'da)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1025
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
      DataSource = dsServicos
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
  object dsServicos: TDataSource
    DataSet = Servicos
    Left = 36
    Top = 122
  end
  object dsTributos: TDataSource
    DataSet = Tributos
    Left = 36
    Top = 218
  end
  object Tributos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Tributos')
    Left = 36
    Top = 170
  end
  object Servicos: TFDQuery
    BeforePost = ServicosBeforePost
    BeforeDelete = ServicosBeforeDelete
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Servicos')
    Left = 36
    Top = 74
    object ServicosAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      DisplayFormat = ',##0.00%'
    end
    object ServicosAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      DisplayFormat = ',##0.00%'
    end
    object ServicosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
    end
    object ServicosDesativado: TBooleanField
      FieldName = 'Desativado'
      Origin = 'Desativado'
    end
    object ServicosIndustria: TBooleanField
      FieldName = 'Industria'
      Origin = 'Industria'
    end
    object ServicosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 60
    end
    object ServicosCSTPIS_Entrada: TStringField
      FieldName = 'CSTPIS_Entrada'
      Origin = 'CSTPIS_Entrada'
      FixedChar = True
      Size = 2
    end
    object ServicosCSTPIS_Saida: TStringField
      FieldName = 'CSTPIS_Saida'
      Origin = 'CSTPIS_Saida'
      FixedChar = True
      Size = 2
    end
    object ServicosCSTCOFINS_Entrada: TStringField
      FieldName = 'CSTCOFINS_Entrada'
      Origin = 'CSTCOFINS_Entrada'
      FixedChar = True
      Size = 2
    end
    object ServicosCSTCOFINS_Saida: TStringField
      FieldName = 'CSTCOFINS_Saida'
      Origin = 'CSTCOFINS_Saida'
      FixedChar = True
      Size = 2
    end
    object ServicosPIS_Recuperar: TStringField
      FieldName = 'PIS_Recuperar'
      Origin = 'PIS_Recuperar'
      Size = 10
    end
    object ServicosPIS_Recolher: TStringField
      FieldName = 'PIS_Recolher'
      Origin = 'PIS_Recolher'
      Size = 10
    end
    object ServicosLimite_PIS: TCurrencyField
      FieldName = 'Limite_PIS'
      Origin = 'Limite_PIS'
      EditFormat = ',##0.00'
    end
    object ServicosCOFINS_Recuperar: TStringField
      FieldName = 'COFINS_Recuperar'
      Origin = 'COFINS_Recuperar'
      Size = 10
    end
    object ServicosCOFINS_Recolher: TStringField
      FieldName = 'COFINS_Recolher'
      Origin = 'COFINS_Recolher'
      Size = 10
    end
    object ServicosLimite_COFINS: TCurrencyField
      FieldName = 'Limite_COFINS'
      Origin = 'Limite_COFINS'
      EditFormat = ',##0.00'
    end
    object ServicosCSLL_Recuperar: TStringField
      FieldName = 'CSLL_Recuperar'
      Origin = 'CSLL_Recuperar'
      Size = 10
    end
    object ServicosCSLL_Recolher: TStringField
      FieldName = 'CSLL_Recolher'
      Origin = 'CSLL_Recolher'
      Size = 10
    end
    object ServicosLimite_CSLL: TCurrencyField
      FieldName = 'Limite_CSLL'
      Origin = 'Limite_CSLL'
      EditFormat = ',##0.00'
    end
    object ServicosIR_Recuperar: TStringField
      FieldName = 'IR_Recuperar'
      Origin = 'IR_Recuperar'
      Size = 10
    end
    object ServicosIR_Recolher: TStringField
      FieldName = 'IR_Recolher'
      Origin = 'IR_Recolher'
      Size = 10
    end
    object ServicosLimite_IR: TCurrencyField
      FieldName = 'Limite_IR'
      Origin = 'Limite_IR'
      EditFormat = ',##0.00'
    end
    object ServicosINSS_Recuperar: TStringField
      FieldName = 'INSS_Recuperar'
      Origin = 'INSS_Recuperar'
      Size = 10
    end
    object ServicosINSS_Recolher: TStringField
      FieldName = 'INSS_Recolher'
      Origin = 'INSS_Recolher'
      Size = 10
    end
    object ServicosLimite_INSS: TCurrencyField
      FieldName = 'Limite_INSS'
      Origin = 'Limite_INSS'
      EditFormat = ',##0.00'
    end
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CSTPIS')
    Left = 36
    Top = 266
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 36
    Top = 314
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 36
    Top = 410
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM CSTPIS')
    Left = 36
    Top = 362
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


