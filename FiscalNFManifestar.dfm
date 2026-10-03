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
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1350
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
    ExplicitLeft = 3
    ExplicitTop = -6
    object bFechar: TUniSpeedButton
      Left = 451
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
      TabOrder = 1
      OnClick = bFecharClick
      ExplicitLeft = 410
      ExplicitTop = -6
    end
    object bSelTodos: TUniButton
      Left = 0
      Top = 0
      Width = 106
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Selecionar Todos'
      Align = alLeft
      TabOrder = 2
      ExplicitLeft = 48
    end
    object bSelNehum: TUniButton
      Left = 106
      Top = 0
      Width = 119
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Selecionar Nenhum'
      Align = alLeft
      TabOrder = 3
    end
    object bManiFora: TUniButton
      Left = 225
      Top = 0
      Width = 136
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Caption = 'Manifesto Fora da Data'
      Align = alLeft
      TabOrder = 4
    end
    object bManifestar: TUniButton
      Left = 361
      Top = 0
      Width = 90
      Height = 35
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      ShowHint = True
      ParentShowHint = False
      Caption = 'Manifestar'
      Align = alLeft
      TabOrder = 5
      ExplicitLeft = 324
      ExplicitTop = -6
    end
  end
  object pBarraPesq: TUniPanel
    Left = 0
    Top = 35
    Width = 1350
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
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 1342
    object cPesquisa: TUniEdit
      Left = 0
      Top = 0
      Width = 385
      Height = 27
      Hint = ''
      BorderStyle = ubsInset
      Text = ''
      Align = alLeft
      TabOrder = 1
      EmptyText = 'Pesquisar'
      ClearButton = True
      OnKeyDown = cPesquisaKeyDown
    end
    object bPesquisa: TUniSpeedButton
      Left = 385
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
  object Ficha: TUniPanel
    Left = 91
    Top = 84
    Width = 817
    Height = 537
    Hint = ''
    Anchors = [akLeft]
    TabOrder = 2
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    object cDataEntrada: TUniDBDateTimePicker
      Tag = 1
      Left = 18
      Top = 19
      Width = 262
      Height = 25
      Hint = 'Informe a "Data de Entrada" da Nota fiscal'
      ShowHint = True
      ParentShowHint = False
      DataField = 'Data_ES'
      DataSource = dsNotas
      DateTime = 46176.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      BorderStyle = ubsInset
      FieldLabel = 'Data do Evento'
      FieldLabelSeparator = ' '
    end
    object UniEdit2: TUniEdit
      Left = 18
      Top = 46
      Width = 262
      Hint = ''
      BorderStyle = ubsInset
      Text = 'UniEdit2'
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 2
      FieldLabel = 'Hora do Evento'
    end
    object cMotivo: TUniComboBox
      Left = 18
      Top = 70
      Width = 262
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
      TabOrder = 3
      FieldLabel = 'Motivo'
      IconItems = <>
    end
    object cJustificativa: TUniEdit
      Left = 18
      Top = 98
      Width = 630
      Height = 25
      Hint = ''
      BorderStyle = ubsInset
      Text = 'cJustificativa'
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 4
      FieldLabel = 'Justificativa'
    end
    object cSit: TUniRadioGroup
      Left = 282
      Top = 139
      Width = 254
      Height = 50
      Hint = ''
      Items.Strings = (
        'N'#227'o Manifestadas'
        'Manifestadas')
      Caption = 'Situa'#231#227'o'
      TabOrder = 5
      ParentFont = False
      Font.Name = 'MS Sans Serif'
      Columns = 2
    end
    object GradeManif: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 208
      Width = 811
      Height = 326
      Hint = ''
      TitleFont.Name = 'MS Sans Serif'
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgCancelOnExit]
      LoadMask.Message = 'Loading data...'
      Align = alBottom
      Font.Name = 'Calibri'
      ParentFont = False
      TabOrder = 6
      Columns = <
        item
          FieldName = 'Nota'
          Title.Alignment = taCenter
          Title.Caption = 'Nota'
          Title.Font.Style = [fsBold]
          Width = 80
          Font.Name = 'Calibri'
        end
        item
          FieldName = 'Data_Emissao'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Style = [fsBold]
          Width = 80
          Font.Name = 'Calibri'
        end
        item
          FieldName = 'NFe_cNF'
          Title.Alignment = taCenter
          Title.Caption = 'Chave NF-e'
          Title.Font.Style = [fsBold]
          Width = 325
          Font.Name = 'Calibri'
        end
        item
          FieldName = 'Fornecedor'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Title.Font.Style = [fsBold]
          Width = 287
          Font.Name = 'Calibri'
          ReadOnly = True
        end>
    end
  end
  object Notas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from NotasFiscais where Emissao = '#39'T'#39)
    Left = 33
    Top = 123
  end
  object dsNotas: TDataSource
    DataSet = Notas
    Left = 29
    Top = 175
  end
end
