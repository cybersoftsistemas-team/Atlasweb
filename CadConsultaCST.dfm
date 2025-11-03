object fCadConsultaCST: TfCadConsultaCST
  Left = 0
  Top = 0
  Width = 1288
  Height = 735
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 0
    Width = 1288
    Height = 735
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet4
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'CST IPI'
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        DataSource = dsCSTIPI
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
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
            Width = 45
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 195
          end
          item
            FieldName = 'Apuracao'
            Title.Alignment = taCenter
            Title.Caption = 'Ins/Out'
            Title.Font.Style = [fsBold]
            Width = 48
            Alignment = taCenter
          end
          item
            FieldName = 'Tributavel'
            Title.Alignment = taCenter
            Title.Caption = 'Tribut'
            Title.Font.Style = [fsBold]
            Width = 40
            Alignment = taCenter
          end
          item
            FieldName = 'CST_Inversa'
            Title.Alignment = taCenter
            Title.Caption = 'CST Inv'
            Title.Font.Style = [fsBold]
            Width = 52
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'CST PIS'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        object UniDBGrid2: TUniDBGrid
          Left = 0
          Top = 0
          Width = 1278
          Height = 705
          Hint = ''
          DataSource = dsCSTPIS
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
          WebOptions.Paged = False
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
              Width = 45
              Alignment = taCenter
            end
            item
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Style = [fsBold]
              Width = 568
            end
            item
              FieldName = 'Tributavel'
              Title.Alignment = taCenter
              Title.Caption = 'Tribut'
              Title.Font.Style = [fsBold]
              Width = 40
              Alignment = taCenter
            end
            item
              FieldName = 'Aliquota_Zero'
              Title.Alignment = taCenter
              Title.Caption = 'Aliq Zero'
              Title.Font.Style = [fsBold]
              Width = 54
              Alignment = taCenter
            end>
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'CST COFINS'
      object UniDBGrid3: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        DataSource = dsCSTCOFINS
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
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
            Width = 45
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 568
          end
          item
            FieldName = 'Tributavel'
            Title.Alignment = taCenter
            Title.Caption = 'Tribut'
            Title.Font.Style = [fsBold]
            Width = 40
            Alignment = taCenter
          end
          item
            FieldName = 'Aliquota_Zero'
            Title.Alignment = taCenter
            Title.Caption = 'Aliq Zero'
            Title.Font.Style = [fsBold]
            Width = 54
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'CST ICMS Tabela A (Origem)'
      object UniDBGrid8: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        DataSource = dsCSTICMSA
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
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
            Width = 45
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 568
          end>
      end
    end
    object UniTabSheet9: TUniTabSheet
      Hint = ''
      Caption = 'CST ICMS Tabela B'
      object UniDBGrid7: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        DataSource = dsCSTICMSB
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
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
            Width = 45
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 568
          end
          item
            FieldName = 'Apuracao1'
            Title.Alignment = taCenter
            Title.Caption = 'Ins/Out'
            Title.Font.Style = [fsBold]
            Width = 48
            Alignment = taCenter
          end
          item
            FieldName = 'Apuracao2'
            Title.Caption = 'Ins/Out'
            Width = 41
            Alignment = taCenter
          end
          item
            FieldName = 'Tributavel'
            Title.Alignment = taCenter
            Title.Caption = 'Tribut'
            Title.Font.Style = [fsBold]
            Width = 40
            Alignment = taCenter
          end
          item
            FieldName = 'CST_Inversa'
            Title.Alignment = taCenter
            Title.Caption = 'CST Inv'
            Title.Font.Style = [fsBold]
            Width = 52
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'CST IBS'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1288
      ExplicitHeight = 735
      object UniDBGrid4: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        DataSource = dsCSTIBS
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
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
            Width = 45
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 568
          end
          item
            FieldName = 'Tributavel'
            Title.Alignment = taCenter
            Title.Caption = 'Tribut'
            Title.Font.Style = [fsBold]
            Width = 40
            Alignment = taCenter
          end
          item
            FieldName = 'Aliquota_Zero'
            Title.Alignment = taCenter
            Title.Caption = 'Aliq Zero'
            Title.Font.Style = [fsBold]
            Width = 54
            Alignment = taCenter
          end>
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'CST CBS'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1288
      ExplicitHeight = 735
      object UniDBGrid5: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1280
        Height = 707
        Hint = ''
        DataSource = dsCSTCBS
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
        WebOptions.Paged = False
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
            Width = 45
            Alignment = taCenter
          end
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 568
          end
          item
            FieldName = 'Tributavel'
            Title.Alignment = taCenter
            Title.Caption = 'Tribut'
            Title.Font.Style = [fsBold]
            Width = 40
            Alignment = taCenter
          end
          item
            FieldName = 'Aliquota_Zero'
            Title.Alignment = taCenter
            Title.Caption = 'Aliq Zero'
            Title.Font.Style = [fsBold]
            Width = 54
            Alignment = taCenter
          end>
      end
    end
  end
  object CSTIPI: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTIPI')
    Left = 52
    Top = 120
  end
  object dsCSTIPI: TDataSource
    DataSet = CSTIPI
    Left = 52
    Top = 168
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTPIS')
    Left = 52
    Top = 216
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 52
    Top = 264
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 52
    Top = 360
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTCOFINS')
    Left = 52
    Top = 312
  end
  object CSTICMSA: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTICMSA')
    Left = 52
    Top = 416
  end
  object dsCSTICMSA: TDataSource
    DataSet = CSTICMSA
    Left = 52
    Top = 464
  end
  object CSTICMSB: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTICMSB')
    Left = 52
    Top = 520
  end
  object dsCSTICMSB: TDataSource
    DataSet = CSTICMSB
    Left = 52
    Top = 568
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
  object CSTIBS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTIBS')
    Left = 133
    Top = 122
  end
  object dsCSTIBS: TDataSource
    DataSet = CSTIBS
    Left = 133
    Top = 171
  end
  object CSTCBS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from CSTCBS')
    Left = 132
    Top = 221
  end
  object dsCSTCBS: TDataSource
    DataSet = CSTCBS
    Left = 132
    Top = 270
  end
end
