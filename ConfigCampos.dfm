object fConfigCampos: TfConfigCampos
  Left = 0
  Top = 0
  Width = 1298
  Height = 803
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniScrollBox1: TUniScrollBox
    Left = 0
    Top = 35
    Width = 1298
    Height = 768
    Hint = ''
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'   config.cls' +
        ' = '#39'Pasta'#39';'#13#10'}')
    TabOrder = 0
    object pFicha5: TUniPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1290
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
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1290
        Height = 639
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
        Top = 639
        Width = 1290
        Height = 121
        Hint = ''
        ShowHint = True
        ParentColor = False
        Align = alBottom
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Painel'#39';'#13#10'}')
        TabOrder = 2
        object cPesq: TUniEdit
          AlignWithMargins = True
          Left = 9
          Top = 6
          Width = 342
          Height = 50
          Hint = ''
          ShowHint = True
          Text = ''
          TabOrder = 1
          ClearButton = True
          FieldLabel = 'Filtrar Tabela'
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          OnChange = cPesqChange
        end
        object cTipo: TUniRadioGroup
          Left = 368
          Top = 9
          Width = 329
          Height = 102
          Hint = ''
          ShowHint = True
          Items.Strings = (
            'Campos calculaveis'
            'Campos n'#227'o calculaveis'
            'Fun'#231#245'es'
            'Com comando SQL'
            'Visivel'
            'Todo')
          ItemIndex = 5
          Caption = 'Tipo'
          TabOrder = 2
          Columns = 2
          OnClick = cTipoClick
        end
        object cCampo: TUniEdit
          AlignWithMargins = True
          Left = 9
          Top = 62
          Width = 342
          Height = 50
          Hint = ''
          ShowHint = True
          Text = ''
          TabOrder = 3
          ClearButton = True
          FieldLabel = 'Filtrar Tabela'
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          OnChange = cPesqChange
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1298
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
      ExplicitLeft = 223
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
      ExplicitLeft = 346
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
