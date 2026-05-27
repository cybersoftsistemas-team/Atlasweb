object fDUIMP: TfDUIMP
  Left = 0
  Top = 0
  ClientHeight = 452
  ClientWidth = 982
  Caption = 'fDUIMP'
  Color = clWindow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 452
    Hint = ''
    Align = alClient
    TabOrder = 0
    BorderStyle = ubsInset
    ShowCaption = False
    Caption = 'UniPanel1'
    object cToken: TUniEdit
      Left = 42
      Top = 144
      Width = 888
      Hint = ''
      BorderStyle = ubsInset
      Text = 'cToken'
      TabOrder = 1
      FieldLabel = 'TOKEN'
    end
    object bBuscar: TUniButton
      Left = 404
      Top = 387
      Width = 79
      Height = 44
      Hint = ''
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = bBuscarClick
    end
    object UniButton1: TUniButton
      Left = 489
      Top = 387
      Width = 79
      Height = 44
      Hint = ''
      Caption = 'Sair'
      TabOrder = 3
      OnClick = UniButton1Click
    end
    object UniLabel1: TUniLabel
      Left = 139
      Top = 25
      Width = 689
      Height = 49
      Hint = ''
      Caption = 'TESTE DE ACESSO AO SERVI'#199'O DA DUIMP'
      ParentFont = False
      Font.Color = clPurple
      Font.Height = -40
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      Color = clNone
      TabOrder = 4
    end
  end
end
