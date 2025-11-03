object fCadCFOP: TfCadCFOP
  Left = 0
  Top = 0
  Width = 1288
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1288
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
      DataSource = dsCFOP
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
    Width = 1288
    Height = 966
    Hint = ''
    BodyRTL = False
    ActivePage = aLista
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1280
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
      object DBGrid1: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1280
        Height = 911
        Hint = ''
        DataSource = dsCFOP
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
        WebOptions.PageSize = 30
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 57
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 488
          end
          item
            FieldName = 'Codigo_Devolucao'
            Title.Alignment = taCenter
            Title.Caption = 'Cod Devol'
            Title.Font.Style = [fsBold]
            Width = 80
            Alignment = taCenter
          end
          item
            FieldName = 'Codigo_Estorno'
            Title.Alignment = taCenter
            Title.Caption = 'Cod Estorno'
            Title.Font.Style = [fsBold]
            Width = 80
            Alignment = taCenter
          end
          item
            FieldName = 'ES'
            Title.Alignment = taCenter
            Title.Caption = 'ES'
            Title.Font.Style = [fsBold]
            Width = 20
            Alignment = taCenter
          end
          item
            FieldName = 'Retorno'
            Title.Alignment = taCenter
            Title.Caption = 'Retorno'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end
          item
            FieldName = 'Servico'
            Title.Alignment = taCenter
            Title.Caption = 'Servi'#231'o'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end
          item
            FieldName = 'Imobilizado'
            Title.Alignment = taCenter
            Title.Caption = 'Imobil'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end
          item
            FieldName = 'Apuracao_PISCOFINS'
            Title.Alignment = taCenter
            Title.Caption = 'PIS/COFINS'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end
          item
            FieldName = 'Inativa'
            Title.Alignment = taCenter
            Title.Caption = 'Inativa'
            Title.Font.Style = [fsBold]
            Width = 70
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dados Gerais'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1280
        Height = 938
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1278
          936)
        ScrollHeight = 377
        object pFicha: TUniPanel
          Left = 112
          Top = 26
          Width = 757
          Height = 351
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
          object GroupBox1: TUniGroupBox
            Left = 507
            Top = 207
            Width = 235
            Height = 129
            Hint = ''
            ShowHint = True
            Caption = 'Par'#226'metros'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cServico: TUniDBCheckBox
              Left = 9
              Top = 42
              Width = 217
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Servico'
              DataSource = dsCFOP
              Caption = 'Referente a presta'#231#227'o de servi'#231'os'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDiferencial_ICMS: TUniDBCheckBox
              Left = 9
              Top = 80
              Width = 217
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Diferencial_ICMS'
              DataSource = dsCFOP
              Caption = 'Calcular diferencial de ali'#237'quota de ICMS'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cImobilizado: TUniDBCheckBox
              Left = 9
              Top = 99
              Width = 217
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Imobilizado'
              DataSource = dsCFOP
              Caption = 'Ativo Imobilizado'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cApuracao_PISCOFINS: TUniDBCheckBox
              Left = 9
              Top = 61
              Width = 217
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Apuracao_PISCOFINS'
              DataSource = dsCFOP
              Caption = 'Apura PIS/COFINS'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cAtivo: TUniDBCheckBox
              Left = 9
              Top = 23
              Width = 79
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Desativada'
              DataSource = dsCFOP
              Caption = 'Desativada'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cSaida_Entrada: TUniDBRadioGroup
            Left = 507
            Top = 8
            Width = 235
            Height = 75
            Hint = ''
            ShowHint = True
            DataField = 'ES'
            DataSource = dsCFOP
            Caption = 'Tipo'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Entrada'
              'Sa'#237'da')
            Values.Strings = (
              '0'
              '1')
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 507
            Top = 94
            Width = 235
            Height = 99
            Hint = ''
            ShowHint = True
            DataField = 'Estado'
            DataSource = dsCFOP
            Caption = 'Origem'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Dentro do Estado'
              'Fora do Estado'
              'Ambos')
            Values.Strings = (
              'D'
              'F'
              'A')
          end
          object UniGroupBox1: TUniGroupBox
            Left = 15
            Top = 8
            Width = 478
            Height = 328
            Hint = ''
            ShowHint = True
            Caption = 'CFOP'
            TabOrder = 4
            object cCodigo: TUniDBEdit
              Left = 11
              Top = 19
              Width = 91
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Codigo'
              DataSource = dsCFOP
              TabOrder = 1
              FieldLabel = 'C'#243'digo '
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cDescricao: TUniDBEdit
              Left = 11
              Top = 70
              Width = 455
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Descricao'
              DataSource = dsCFOP
              TabOrder = 2
              UseFieldAlignment = False
              InputType = 'text'
              FieldLabel = 'Descri'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object cPrazo_Retorno: TUniDBEdit
              Left = 11
              Top = 223
              Width = 130
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Prazo_Retorno'
              DataSource = dsCFOP
              TabOrder = 3
              FieldLabel = 'Prazo p/Retorno (Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit1: TUniDBEdit
              Left = 11
              Top = 121
              Width = 130
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Codigo_Devolucao'
              DataSource = dsCFOP
              TabOrder = 4
              FieldLabel = 'CFOP (Devolu'#231#227'o)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
            object UniDBEdit2: TUniDBEdit
              Left = 11
              Top = 172
              Width = 130
              Height = 50
              Hint = ''
              ShowHint = True
              DataField = 'Codigo_Estorno'
              DataSource = dsCFOP
              TabOrder = 5
              FieldLabel = 'CFOP (Estorno)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
            end
          end
        end
      end
    end
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from CFOP')
    Left = 39
    Top = 85
    object CFOPCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object CFOPDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 80
    end
    object CFOPES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object CFOPCodigo_Devolucao: TSmallintField
      FieldName = 'Codigo_Devolucao'
      Origin = 'Codigo_Devolucao'
    end
    object CFOPCodigo_Estorno: TSmallintField
      FieldName = 'Codigo_Estorno'
      Origin = 'Codigo_Estorno'
    end
    object CFOPServico: TBooleanField
      FieldName = 'Servico'
      Origin = 'Servico'
    end
    object CFOPDiferencial_ICMS: TBooleanField
      FieldName = 'Diferencial_ICMS'
      Origin = 'Diferencial_ICMS'
    end
    object CFOPImobilizado: TBooleanField
      FieldName = 'Imobilizado'
      Origin = 'Imobilizado'
    end
    object CFOPApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object CFOPPrazo_Retorno: TSmallintField
      FieldName = 'Prazo_Retorno'
      Origin = 'Prazo_Retorno'
    end
    object CFOPDesativada: TBooleanField
      FieldName = 'Desativada'
      Origin = 'Desativada'
    end
    object CFOPEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      FixedChar = True
      Size = 1
    end
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 40
    Top = 134
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 656
    Top = 19
  end
end
