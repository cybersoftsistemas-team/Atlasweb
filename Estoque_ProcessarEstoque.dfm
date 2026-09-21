object fEstoque_ProcessarEstoque: TfEstoque_ProcessarEstoque
  Left = 0
  Top = 0
  Width = 995
  Height = 589
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    995
    589)
  object pnlProcessando: TUniPanel
    Left = 170
    Top = 31
    Width = 620
    Height = 288
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Anchors = [akTop]
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    DesignSize = (
      620
      288)
    object bCancelar: TUniButton
      Left = 313
      Top = 226
      Width = 90
      Height = 37
      Hint = ''
      ShowHint = True
      Caption = 'Cancelar'
      Anchors = [akRight, akBottom]
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object lMsg: TUniLabel
      AlignWithMargins = True
      Left = 3
      Top = 182
      Width = 614
      Height = 26
      Hint = ''
      Margins.Top = 30
      Visible = False
      ShowHint = True
      Alignment = taCenter
      AutoSize = False
      Caption = '...'
      ParentFont = False
      Font.Height = -19
      Font.Name = 'Calibri'
      TabOrder = 2
    end
    object bProcessar: TUniButton
      Left = 216
      Top = 226
      Width = 90
      Height = 37
      Hint = ''
      ShowHint = True
      Caption = 'Processar'
      Anchors = [akRight, akBottom]
      TabOrder = 3
      OnClick = bProcessarClick
    end
    object cDescricao: TUniRadioGroup
      Left = 29
      Top = 81
      Width = 352
      Height = 79
      Hint = ''
      ShowHint = True
      Items.Strings = (
        'Utilizar a descri'#231#227'o da mercadoria da nota fiscal'
        'Utilizar a descricao da mercadoria do cadastro do produto')
      ItemIndex = 0
      Caption = 'Descri'#231#227'o da Mercadoria'
      TabOrder = 4
    end
    object cEmpresa: TUniDBLookupComboBox
      Left = 29
      Top = 37
      Width = 561
      Hint = ''
      ShowHint = True
      ListField = 'CNPJ;Filial;Razao_Social'
      ListSource = dsEmpresas
      KeyField = 'CNPJ'
      ListFieldIndex = 2
      AnyMatch = True
      TabOrder = 5
      Color = clWindow
      MatchFieldWidth = False
      FieldLabel = 'Empresa'
      FieldLabelWidth = 60
      FieldLabelSeparator = ' '
    end
  end
  object Timer: TUniTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = TimerTimer
    Left = 91
    Top = 196
  end
  object Alerta: TUniSweetAlert
    Title = ''
    Text = 'Ficha de "Estoque / Inventario" processadas com sucesso!'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    TimerMS = 10000
    Left = 91
    Top = 244
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select CNPJ, Filial, Razao_Social from Empresas')
    Left = 91
    Top = 104
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 91
    Top = 151
  end
end
