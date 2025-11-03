object LaudosBL: TLaudosBL
  Left = 0
  Top = 0
  ClientHeight = 523
  ClientWidth = 382
  Caption = 'Selecione os BL'#39's para o Laudo'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TUniDBGrid
    Left = 0
    Top = 0
    Width = 382
    Height = 482
    Hint = ''
    Margins.Top = 1
    DataSource = dstBL
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgAlwaysShowSelection, dgConfirmDelete, dgMultiSelect, dgAutoRefreshRow]
    ReadOnly = True
    WebOptions.Paged = False
    WebOptions.PageSize = 30
    LoadMask.Message = 'Carregando dados ...'
    ForceFit = True
    BorderStyle = ubsNone
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = 15721700
    OnSelectionChange = GradeSelectionChange
    Columns = <
      item
        FieldName = 'BL'
        Title.Alignment = taCenter
        Title.Caption = 'BL'
        Title.Font.Style = [fsBold]
        Width = 166
      end
      item
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Style = [fsBold]
        Width = 88
        Alignment = taCenter
      end
      item
        FieldName = 'Endossado'
        Title.Alignment = taCenter
        Title.Caption = 'End'
        Title.Font.Style = [fsBold]
        Width = 30
        Alignment = taCenter
      end
      item
        FieldName = 'Bloqueado'
        Title.Alignment = taCenter
        Title.Caption = 'Blq'
        Title.Font.Style = [fsBold]
        Width = 30
        Alignment = taCenter
      end
      item
        FieldName = 'Entreposto'
        Title.Alignment = taCenter
        Title.Caption = 'Ent'
        Title.Font.Style = [fsBold]
        Width = 30
        Alignment = taCenter
      end>
  end
  object Panel10: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 485
    Width = 376
    Height = 35
    Hint = ''
    Align = alBottom
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsInset
    Caption = ''
    object bAdicionar: TUniButton
      Left = 219
      Top = 1
      Width = 80
      Height = 33
      Hint = 'Adicionar BL'#39's ao Laudo   '
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Enabled = False
      ShowHint = True
      ParentShowHint = False
      Caption = 'Adicionar'
      Align = alRight
      TabOrder = 0
      OnClick = bAdicionarClick
    end
    object bSair: TUniButton
      Left = 299
      Top = 1
      Width = 76
      Height = 33
      Hint = ''
      Caption = 'Sair'
      Align = alRight
      TabOrder = 2
      OnClick = bSairClick
    end
  end
  object tBL: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from EmbarquesBL')
    Left = 119
    Top = 373
  end
  object dstBL: TDataSource
    DataSet = tBL
    Left = 119
    Top = 423
  end
end
