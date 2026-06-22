object fComexInvoiceLPCO: TfComexInvoiceLPCO
  Left = 0
  Top = 0
  ClientHeight = 577
  ClientWidth = 943
  Caption = 'fComexInvoiceLPCO'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pBarraNav: TUniPanel
    Left = 0
    Top = 542
    Width = 943
    Height = 35
    Hint = ''
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    ExplicitTop = 338
    ExplicitWidth = 779
    object bGravItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 902
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Adicionar os LPCO'#39's selecionados ao item'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 1
      OnClick = bGravItensClick
      ExplicitLeft = 169
    end
    object bCancItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 860
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Cancelar'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 2
      OnClick = bCancItensClick
      ExplicitLeft = 127
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 542
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 5
    Align = alClient
    ParentFont = False
    Font.Height = -13
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Painel'#39';'#13#10'}')
    BorderStyle = ubsNone
    ShowCaption = False
    TitleVisible = True
    TitleAlign = taCenter
    Title = 'Rela'#231#227'o de Licen'#231'as/Permiss'#245'es/Certificados/Outros cadastrados'
    Caption = 'UniPanel1'
    ExplicitLeft = 5
    ExplicitTop = 7
    ExplicitWidth = 923
    ExplicitHeight = 495
    object Grade: TUniDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 933
      Height = 532
      Hint = ''
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataSource = dsLPCO
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgCheckSelectCheckOnly, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow, dgDontShowSelected]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsInset
      TrackOver = False
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'Documento'
          Title.Alignment = taCenter
          Title.Caption = 'Documento'
          Title.Font.Style = [fsBold]
          Width = 160
        end
        item
          FieldName = 'Orgao_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Org'#227'o Anuente'
          Title.Font.Style = [fsBold]
          Width = 364
        end
        item
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'Numero'
          Title.Font.Style = [fsBold]
          Width = 184
        end
        item
          FieldName = 'Data_Inicio'
          Title.Alignment = taCenter
          Title.Caption = 'Data In'#237'cio'
          Title.Font.Style = [fsBold]
          Width = 94
          Alignment = taCenter
        end
        item
          FieldName = 'Data_Fim'
          Title.Alignment = taCenter
          Title.Caption = 'Data Fim'
          Title.Font.Style = [fsBold]
          Width = 96
          Alignment = taCenter
        end>
    end
  end
  object LPCO: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM LPCO')
    Left = 68
    Top = 111
    object LPCOLPCO: TFDAutoIncField
      FieldName = 'LPCO'
      Origin = 'LPCO'
      ReadOnly = True
    end
    object LPCOEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object LPCOOrgao_Anuente: TStringField
      FieldName = 'Orgao_Anuente'
      Origin = 'Orgao_Anuente'
      Size = 10
    end
    object LPCODocumento: TStringField
      FieldName = 'Documento'
      Origin = 'Documento'
      Size = 30
    end
    object LPCONumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
      Size = 30
    end
    object LPCOData_Inicio: TSQLTimeStampField
      FieldName = 'Data_Inicio'
      Origin = 'Data_Inicio'
    end
    object LPCOData_Fim: TSQLTimeStampField
      FieldName = 'Data_Fim'
      Origin = 'Data_Fim'
    end
    object LPCOOrgao_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Orgao_Nome'
      LookupDataSet = OrgaosAnuentes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Orgao_Anuente'
      Size = 60
      Lookup = True
    end
  end
  object dsLPCO: TDataSource
    DataSet = LPCO
    Left = 68
    Top = 161
  end
  object OrgaosAnuentes: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM OrgaosAnuentes')
    Left = 145
    Top = 111
  end
  object dsOrgaosAnuentes: TDataSource
    DataSet = OrgaosAnuentes
    Left = 145
    Top = 161
  end
  object ItensLPCO: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM InvoiceItensLPCO')
    Left = 235
    Top = 111
  end
  object dsItensLPCO: TDataSource
    DataSet = ItensLPCO
    Left = 235
    Top = 161
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select isnull(sum(Total_Fatura), 0)   as Total_Real,'
      '       isnull(sum(Total_FaturaME), 0) as Total_ME,'
      '       isnull(sum(Peso_Liquido), 0)   as Total_PesoLiquido,'
      '       isnull(sum(Peso_Bruto), 0)     as Total_PesoBruto'
      'from Invoice'
      '')
    Left = 289
    Top = 111
  end
end
