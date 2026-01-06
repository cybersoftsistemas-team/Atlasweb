object fFatPedidoNFLote: TfFatPedidoNFLote
  Left = 0
  Top = 0
  ClientHeight = 671
  ClientWidth = 887
  Caption = 'fFatPedidoNFLote'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PageMode = True
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pBarraNav: TUniPanel
    Left = 0
    Top = 636
    Width = 887
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
    ExplicitWidth = 708
    object bFechar: TUniSpeedButton
      AlignWithMargins = True
      Left = 846
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Caption = ''
      Align = alRight
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = bFecharClick
      ExplicitLeft = 667
    end
    object bAddItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Adicionar novo item ao pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
    end
    object bEditItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 43
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Editar o item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
    end
    object bExcItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 85
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Excluir o item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
    end
    object bCancItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 127
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Cancelar modifica'#231#245'es feitas no item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 5
    end
    object bGravItens: TUniSpeedButton
      AlignWithMargins = True
      Left = 169
      Top = 1
      Width = 40
      Height = 33
      Hint = 'Salva o item do pedido corrente.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 6
    end
    object UniEdit1: TUniEdit
      Left = 305
      Top = 11
      Width = 121
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 7
    end
  end
  object uniPanel1: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 881
    Height = 324
    Hint = ''
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'CaixaSimples'#39';'#13#10'}')
    BorderStyle = ubsInset
    TitleVisible = True
    Title = 'Seriais Dispon'#237'veis'
    Caption = ''
    ExplicitWidth = 702
    object gItens: TUniDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 873
      Height = 316
      Hint = ''
      DataSource = dstProdutosSeriais
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsNone
      TrackOver = False
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'Processo'
          Title.Alignment = taCenter
          Title.Caption = 'Processo'
          Title.Font.Style = [fsBold]
          Width = 132
        end
        item
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Style = [fsBold]
          Width = 64
        end
        item
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'Numero'
          Title.Font.Style = [fsBold]
          Width = 278
        end
        item
          FieldName = 'Cor_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Title.Font.Style = [fsBold]
          Width = 124
          ReadOnly = True
        end
        item
          FieldName = 'Cor_DENATRAN'
          Title.Alignment = taCenter
          Title.Caption = 'Cor DENATRAN'
          Title.Font.Style = [fsBold]
          Width = 124
        end
        item
          FieldName = 'Ano_Modelo'
          Title.Alignment = taCenter
          Title.Caption = 'Ano/Mod'
          Title.Font.Style = [fsBold]
          Width = 56
          Alignment = taCenter
        end
        item
          FieldName = 'Ano_Fabricacao'
          Title.Alignment = taCenter
          Title.Caption = 'Fab'
          Title.Font.Style = [fsBold]
          Width = 56
          Alignment = taCenter
        end>
    end
  end
  object UniPanel2: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 333
    Width = 881
    Height = 300
    Hint = ''
    Align = alClient
    TabOrder = 2
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'CaixaSimples'#39';'#13#10'}')
    BorderStyle = ubsInset
    TitleVisible = True
    Title = 'Seriais Adicionados ao Pedido'
    Caption = ''
    ExplicitWidth = 702
    object UniDBGrid4: TUniDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 873
      Height = 292
      Hint = ''
      DataSource = dstPedidosSeriais
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      BorderStyle = ubsNone
      Align = alClient
      TabOrder = 1
    end
  end
  object dstProdutosSeriais: TDataSource
    DataSet = tProdutoSeriais
    Left = 145
    Top = 156
  end
  object dstPedidosSeriais: TDataSource
    DataSet = tPedidoSeriais
    Left = 241
    Top = 155
  end
  object tPedidoSeriais: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from PedidosItensDetalhe')
    Left = 241
    Top = 108
  end
  object tProdutoSeriais: TFDQuery
    Active = True
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * '
      '      ,Cor_Nome = (select Nome from Cores where Codigo = Cor)'
      'from ProdutosSeriais')
    Left = 145
    Top = 109
  end
end
