object fFiscalNFManifestar: TfFiscalNFManifestar
  Left = 0
  Top = 0
  Width = 1350
  Height = 795
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  DesignSize = (
    1350
    795)
  object Ficha: TUniPanel
    Left = 66
    Top = 70
    Width = 959
    Height = 643
    Hint = ''
    Anchors = [akLeft]
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    DesignSize = (
      959
      643)
    object cData: TUniDBDateTimePicker
      Tag = 1
      Left = 18
      Top = 43
      Width = 250
      Height = 25
      Hint = 'Informe a "Data de Entrada" da Nota fiscal'
      ShowHint = True
      ParentShowHint = False
      DataField = 'Data_ES'
      DataSource = dsNotas
      DateTime = 46176.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 0
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      BorderStyle = ubsInset
      FieldLabel = 'Data do Evento'
      FieldLabelSeparator = ' '
    end
    object cHora: TUniEdit
      Tag = 1
      Left = 18
      Top = 70
      Width = 250
      Height = 25
      Hint = ''
      BorderStyle = ubsInset
      Text = 'cHora'
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 1
      FieldLabel = 'Hora do Evento'
      FieldLabelSeparator = ' '
      InputType = 'time'
    end
    object cMotivo: TUniComboBox
      Tag = 1
      Left = 18
      Top = 97
      Width = 509
      Height = 25
      Hint = ''
      Text = ''
      Items.Strings = (
        'Confirma'#231#227'o da Opera'#231#227'o'
        'Ci'#234'ncia da Opera'#231#227'o'
        'Desconhecimento da Opera'#231#227'o'
        'Registro da Opera'#231#227'o n'#227'o Realizada')
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 2
      FieldLabel = 'Motivo'
      IconItems = <>
    end
    object cJustificativa: TUniEdit
      Left = 18
      Top = 125
      Width = 698
      Height = 25
      Hint = ''
      BorderStyle = ubsInset
      Text = ''
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 3
      FieldLabel = 'Justificativa'
    end
    object Grade: TUniDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 165
      Width = 949
      Height = 304
      Hint = ''
      Margins.Left = 5
      Margins.Right = 5
      TitleFont.Name = 'MS Sans Serif'
      DataSource = dsNotas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgCheckSelectCheckOnly, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgCancelOnExit, dgDontShowSelected]
      LoadMask.Message = 'Carregando Notas Fiscais...Aguarde'
      ForceFit = True
      BorderStyle = ubsInset
      Align = alBottom
      Font.Name = 'Calibri'
      ParentFont = False
      TabOrder = 6
      Columns = <
        item
          FieldName = 'Chave'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Title.Font.Style = [fsBold]
          Width = 261
          Font.Name = 'Calibri'
          Alignment = taCenter
        end
        item
          FieldName = 'Data_Emissao'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Style = [fsBold]
          Width = 70
          Font.Name = 'Calibri'
          Alignment = taCenter
        end
        item
          FieldName = 'Data_ES'
          Title.Alignment = taCenter
          Title.Caption = 'Entrada'
          Title.Font.Style = [fsBold]
          Width = 80
          Font.Name = 'Calibri'
          Alignment = taCenter
        end
        item
          FieldName = 'Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Title.Font.Style = [fsBold]
          Width = 259
          Font.Name = 'Calibri'
          ReadOnly = True
        end
        item
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Style = [fsBold]
          Width = 265
          Font.Name = 'Calibri'
        end
        item
          FieldName = 'Manifestada'
          Title.Alignment = taCenter
          Title.Caption = 'Manif'
          Title.Font.Style = [fsBold]
          Width = 40
          Font.Name = 'Calibri'
          Alignment = taCenter
        end>
    end
    object cSit: TUniRadioGroup
      Left = 756
      Top = 30
      Width = 166
      Height = 76
      Hint = ''
      Items.Strings = (
        'N'#227'o Manifestadas'
        'Manifestadas')
      ItemIndex = 0
      Anchors = [akLeft, akBottom]
      Caption = 'Filtro'
      TabOrder = 5
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      OnClick = cSitClick
    end
    object cEmpresa: TUniDBLookupComboBox
      Left = 18
      Top = 15
      Width = 698
      Height = 25
      Hint = ''
      ListField = 'CNPJ;Razao_Social'
      ListSource = dsEmpresas
      KeyField = 'CNPJ'
      ListFieldIndex = 1
      TabOrder = 8
      Color = clWindow
      FieldLabel = 'Empresa'
    end
    object cMensagens: TUniMemo
      AlignWithMargins = True
      Left = 3
      Top = 475
      Width = 951
      Height = 156
      Hint = ''
      Margins.Right = 5
      Margins.Bottom = 12
      BorderStyle = ubsInset
      Lines.Strings = (
        'cMensagens')
      Align = alBottom
      ReadOnly = True
      TabOrder = 7
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1350
    Height = 39
    Hint = ''
    Align = alTop
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object bFechar: TUniSpeedButton
      AlignWithMargins = True
      Left = 337
      Top = 2
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = bFecharClick
    end
    object bManiFora: TUniButton
      AlignWithMargins = True
      Left = 90
      Top = 2
      Width = 136
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      ShowHint = True
      ParentShowHint = False
      Caption = 'Manifesto Fora da Data'
      Align = alLeft
      TabOrder = 2
    end
    object bManifestar: TUniButton
      AlignWithMargins = True
      Left = 1
      Top = 2
      Width = 87
      Height = 35
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      ShowHint = True
      ParentShowHint = False
      Caption = 'Manifestar'
      Align = alLeft
      TabOrder = 3
      OnClick = bManifestarClick
    end
    object bConsultar: TUniButton
      AlignWithMargins = True
      Left = 228
      Top = 2
      Width = 107
      Height = 35
      Hint = ''
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Caption = 'Consultar Notas'
      Align = alLeft
      TabOrder = 4
      OnClick = bConsultarClick
    end
  end
  object Notas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Chave'
      '      ,Data_Emissao'
      '      ,Data_ES'
      '      ,dst.Nome'
      '      ,op. Descricao'
      '      ,nf.Manifestada'
      'from NotasFiscais nf'
      'inner join Destinatarios dst on dst.Codigo = nf.Destinatario'
      'inner join OperacaoFiscal op on op.Codigo = nf.Operacao'
      'where nf.Empresa = '#39'07922103000158'#39
      'and nf.Emissao = '#39'T'#39
      'and Modelo = '#39'55'#39
      'and isnull(nf.Desdobramento, 0) = 0'
      'and isnull(nf.Manifestada, 0) = 0'
      '')
    Left = 187
    Top = 300
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 187
    Top = 349
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Registro salvo com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 329
    Top = 349
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Chave'
      '      ,Data_Emissao'
      '      ,Data_ES'
      '      ,dst.Nome'
      '      ,op. Descricao'
      '      ,nf.Manifestada'
      'from NotasFiscais nf'
      'inner join Destinatarios dst on dst.Codigo = nf.Destinatario'
      'inner join OperacaoFiscal op on op.Codigo = nf.Operacao'
      'where nf.Empresa = '#39'07922103000158'#39
      'and nf.Emissao = '#39'T'#39
      'and Modelo = '#39'55'#39
      'and isnull(nf.Desdobramento, 0) = 0'
      'and isnull(nf.Manifestada, 0) = 0'
      '')
    Left = 257
    Top = 300
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 257
    Top = 349
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Chave'
      '      ,Data_Emissao'
      '      ,Data_ES'
      '      ,dst.Nome'
      '      ,op. Descricao'
      '      ,nf.Manifestada'
      'from NotasFiscais nf'
      'inner join Destinatarios dst on dst.Codigo = nf.Destinatario'
      'inner join OperacaoFiscal op on op.Codigo = nf.Operacao'
      'where nf.Empresa = '#39'07922103000158'#39
      'and nf.Emissao = '#39'T'#39
      'and Modelo = '#39'55'#39
      'and isnull(nf.Desdobramento, 0) = 0'
      'and isnull(nf.Manifestada, 0) = 0'
      '')
    Left = 329
    Top = 300
  end
  object UniScreenMask1: TUniScreenMask
    AttachedControl = bConsultar
    Enabled = True
    DisplayMessage = 'Consultando Notas no WEB Service...Aguarde'
    TargetControl = Ficha
    Left = 411
    Top = 300
  end
end
