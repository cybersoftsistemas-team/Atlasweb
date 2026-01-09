object fConfigCampos: TfConfigCampos
  Left = 0
  Top = 0
  Width = 1365
  Height = 803
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniScrollBox1: TUniScrollBox
    Left = 0
    Top = 35
    Width = 1365
    Height = 768
    Hint = ''
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
        ' = '#39'Pasta'#39';'#13#10'}')
    TabOrder = 0
    ExplicitWidth = 1298
    object pFicha5: TUniPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1357
      Height = 760
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Align = alClient
      TabOrder = 0
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
          ' = '#39'Ficha'#39';'#13#10'}')
      BorderStyle = ubsNone
      TitleAlign = taCenter
      Title = 'DADOS GERAIS'
      Caption = ''
      Color = clTeal
      ExplicitWidth = 1290
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1357
        Height = 666
        Hint = ''
        ShowHint = True
        RowEditor = True
        DataSource = dstCampos
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
        WebOptions.FetchAll = True
        LoadMask.Message = 'Loading data...'
        BorderStyle = ubsInset
        Align = alClient
        TabOrder = 1
        OnDblClick = UniDBGrid1DblClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Title.Font.Style = [fsBold]
            Width = 48
          end
          item
            FieldName = 'Referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Referencia'
            Title.Font.Style = [fsBold]
            Width = 177
          end
          item
            FieldName = 'Tabela'
            Title.Alignment = taCenter
            Title.Caption = 'Tabela'
            Title.Font.Style = [fsBold]
            Width = 170
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descricao'
            Title.Font.Style = [fsBold]
            Width = 319
          end
          item
            FieldName = 'Campo'
            Title.Alignment = taCenter
            Title.Caption = 'Campo'
            Title.Font.Style = [fsBold]
            Width = 282
          end
          item
            FieldName = 'Mascara'
            Title.Alignment = taCenter
            Title.Caption = 'Mascara'
            Title.Font.Style = [fsBold]
            Width = 128
          end
          item
            FieldName = 'Campo_Chave'
            Title.Alignment = taCenter
            Title.Caption = 'Campo_Chave'
            Title.Font.Style = [fsBold]
            Width = 138
          end
          item
            FieldName = 'Pesquisa'
            Title.Alignment = taCenter
            Title.Caption = 'Pesquisa'
            Title.Font.Style = [fsBold]
            Width = 187
          end
          item
            FieldName = 'Posiciona'
            Title.Alignment = taCenter
            Title.Caption = 'Posiciona'
            Title.Font.Style = [fsBold]
            Width = 184
          end
          item
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Style = [fsBold]
            Width = 124
          end
          item
            FieldName = 'Calculavel'
            Title.Alignment = taCenter
            Title.Caption = 'Calculavel'
            Title.Font.Style = [fsBold]
            Width = 61
          end
          item
            FieldName = 'Valor_Teste'
            Title.Alignment = taCenter
            Title.Caption = 'Valor_Teste'
            Title.Font.Style = [fsBold]
            Width = 184
          end
          item
            FieldName = 'Visivel'
            Title.Alignment = taCenter
            Title.Caption = 'Visivel'
            Title.Font.Style = [fsBold]
            Width = 40
          end
          item
            FieldName = 'Comando_SQL'
            Title.Alignment = taCenter
            Title.Caption = 'Comando_SQL'
            Title.Font.Style = [fsBold]
            Width = 724
          end
          item
            FieldName = 'Funcao'
            Title.Alignment = taCenter
            Title.Caption = 'Funcao'
            Title.Font.Style = [fsBold]
            Width = 44
          end
          item
            FieldName = 'Percentual'
            Title.Alignment = taCenter
            Title.Caption = 'Percentual'
            Title.Font.Style = [fsBold]
            Width = 65
          end
          item
            FieldName = 'Tabela_LookUpOrigem'
            Title.Alignment = taCenter
            Title.Caption = 'Tabela_LookUpOrigem'
            Title.Font.Style = [fsBold]
            Width = 184
          end
          item
            FieldName = 'Campo_LookUpChave'
            Title.Alignment = taCenter
            Title.Caption = 'Campo_LookUpChave'
            Title.Font.Style = [fsBold]
            Width = 364
          end
          item
            FieldName = 'Campo_LookUpPesquisa'
            Title.Alignment = taCenter
            Title.Caption = 'Campo_LookUpPesquisa'
            Title.Font.Style = [fsBold]
            Width = 364
          end
          item
            FieldName = 'Recebe_Formula'
            Title.Alignment = taCenter
            Title.Caption = 'Recebe_Formula'
            Title.Font.Style = [fsBold]
            Width = 99
          end>
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 0
        Top = 666
        Width = 1357
        Height = 94
        Hint = ''
        ShowHint = True
        ParentColor = False
        Align = alBottom
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Painel'#39';'#13#10'}')
        TabOrder = 2
        ExplicitTop = 665
        ExplicitWidth = 1290
        object cTab: TUniEdit
          AlignWithMargins = True
          Left = 6
          Top = 7
          Width = 550
          Height = 25
          Hint = ''
          ShowHint = True
          BorderStyle = ubsInset
          Text = ''
          TabOrder = 1
          ClearButton = True
          FieldLabel = 'Filtrar Tabela'
          FieldLabelWidth = 140
          FieldLabelSeparator = ' '
          OnChange = cTabChange
        end
        object cCam: TUniEdit
          AlignWithMargins = True
          Left = 6
          Top = 34
          Width = 550
          Height = 25
          Hint = ''
          ShowHint = True
          BorderStyle = ubsInset
          Text = ''
          TabOrder = 2
          ClearButton = True
          FieldLabel = 'Filtrar Campo'
          FieldLabelWidth = 140
          FieldLabelSeparator = ' '
          OnChange = cTabChange
        end
        object cFiltro: TUniGroupBox
          Left = 593
          Top = 19
          Width = 761
          Height = 57
          Cursor = crHandPoint
          Hint = ''
          ShowHint = True
          Caption = 'Filtros'
          TabOrder = 3
          object cCal: TUniCheckBox
            Left = 10
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Calculaveis'
            TabOrder = 1
            OnClick = cCalClick
          end
          object cFun: TUniCheckBox
            Left = 330
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Fun'#231#245'es'
            TabOrder = 2
            OnClick = cCalClick
          end
          object cSQL: TUniCheckBox
            Left = 121
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Com SQL'
            TabOrder = 3
            OnClick = cCalClick
          end
          object cVis: TUniCheckBox
            Left = 430
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Vis'#237'veis'
            TabOrder = 4
            OnClick = cCalClick
          end
          object cRec: TUniCheckBox
            Left = 518
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Recebe f'#243'rmula'
            TabOrder = 5
            OnClick = cCalClick
          end
          object cImp: TUniCheckBox
            Left = 646
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Imposto'
            TabOrder = 6
            OnClick = cCalClick
          end
          object cPer: TUniCheckBox
            Left = 218
            Top = 20
            Width = 100
            Height = 17
            Cursor = crHandPoint
            Hint = ''
            ShowHint = True
            Caption = 'Percentual'
            TabOrder = 7
            OnClick = cCalClick
          end
        end
        object cDes: TUniEdit
          AlignWithMargins = True
          Left = 6
          Top = 61
          Width = 550
          Height = 25
          Hint = ''
          ShowHint = True
          BorderStyle = ubsInset
          Text = ''
          TabOrder = 4
          ClearButton = True
          FieldLabel = 'Filtrar Descri'#231#227'o'
          FieldLabelWidth = 140
          FieldLabelSeparator = ' '
          OnChange = cTabChange
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1365
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsSingle
    Caption = ''
    Color = 5526569
    ExplicitWidth = 1298
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 141
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dstCampos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bExcluir: TUniSpeedButton
      Left = 182
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 3
      OnClick = bExcluirClick
    end
    object bFechar: TUniSpeedButton
      Left = 223
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
      TabOrder = 4
      OnClick = bFecharClick
    end
    object bAdicionar: TUniSpeedButton
      Left = 141
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
  end
  object tCampos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from Campos order by Tabela, Campo')
    Left = 32
    Top = 87
  end
  object dstCampos: TDataSource
    DataSet = tCampos
    Left = 32
    Top = 132
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 96
    Top = 92
  end
end
