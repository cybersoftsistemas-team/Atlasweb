object fCadModalidadesPagamento: TfCadModalidadesPagamento
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
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1280
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
        Width = 1280
        Height = 911
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Height = -13
        TitleFont.Style = [fsBold]
        DataSource = dsModal
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
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
        OnDblClick = bEditarClick
        Columns = <
          item
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Style = [fsBold]
            Width = 56
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 456
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Numero_Parcelas'
            Title.Alignment = taCenter
            Title.Caption = 'Parcelas'
            Title.Font.Style = [fsBold]
            Width = 76
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Prazo_Primeira'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo Prim.'
            Title.Font.Style = [fsBold]
            Width = 104
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Prazo_Demais'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo Demais'
            Title.Font.Style = [fsBold]
            Width = 106
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Forma_Pagamento'
            Title.Alignment = taCenter
            Title.Caption = 'Forma Pgto'
            Title.Font.Style = [fsBold]
            Width = 88
            Font.Name = 'Calibri'
          end
          item
            FieldName = 'Prazo_Dia'
            Title.Alignment = taCenter
            Title.Caption = 'Prazo Dias'
            Title.Font.Style = [fsBold]
            Width = 90
            Font.Name = 'Calibri'
          end>
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
        ScrollHeight = 481
        object pFicha: TUniPanel
          Left = 91
          Top = 18
          Width = 366
          Height = 463
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
          object cDescricao: TUniDBEdit
            Left = 22
            Top = 80
            Width = 317
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
          object cCodigo: TUniDBEdit
            Left = 22
            Top = 24
            Width = 154
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
          object cForma_Pagamento: TUniDBRadioGroup
            Left = 22
            Top = 380
            Width = 317
            Height = 44
            Hint = ''
            ShowHint = True
            DataField = 'Forma_Pagamento'
            DataSource = dsModal
            Caption = 'Forma de Pagamento (NF-e)'
            TabOrder = 7
            Items.Strings = (
              'A Vista'
              'A Prazo'
              'Outros')
            Columns = 3
            Values.Strings = (
              '0'
              '1'
              '2')
          end
          object cNumero_Parcelas: TUniDBEdit
            Left = 22
            Top = 136
            Width = 154
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Numero_Parcelas'
            DataSource = dsModal
            TabOrder = 3
            FieldLabel = 'N'#186' de Parcelas'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cPrazo_Primeira: TUniDBEdit
            Left = 22
            Top = 192
            Width = 154
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Prazo_Primeira'
            DataSource = dsModal
            TabOrder = 4
            FieldLabel = 'Prazo 1'#170' Parcela'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            OnExit = cPrazo_PrimeiraExit
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cPrazo_Demais: TUniDBEdit
            Left = 22
            Top = 248
            Width = 154
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Prazo_Demais'
            DataSource = dsModal
            TabOrder = 5
            FieldLabel = 'Demais Parcelas'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cPrazo_Dia: TUniDBEdit
            Left = 22
            Top = 304
            Width = 154
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Prazo_Dia'
            DataSource = dsModal
            TabOrder = 6
            FieldLabel = 'Dia Fixo p/Vencimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
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
      'SELECT * FROM ModalidadesPagamento')
    Left = 16
    Top = 206
  end
  object dsModal: TDataSource
    DataSet = Modal
    Left = 18
    Top = 254
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



