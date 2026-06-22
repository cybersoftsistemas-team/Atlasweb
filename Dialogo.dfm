object fDialogo: TfDialogo
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  ClientHeight = 305
  ClientWidth = 557
  Caption = 'fDialogo'
  Color = clWindow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  PageMode = True
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.cls = '#39'Ficha'#39';'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object Icone: TUniImage
    Left = 248
    Top = 27
    Width = 60
    Height = 60
    Hint = ''
    Center = True
    Stretch = True
  end
  object lTipo: TUniLabel
    AlignWithMargins = True
    Left = 10
    Top = 118
    Width = 537
    Height = 33
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Campo Obrigat'#243'rio!'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    TabOrder = 1
  end
  object lmsg: TUniLabel
    AlignWithMargins = True
    Left = 10
    Top = 156
    Width = 537
    Height = 73
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Informe o n'#250'mero da nota fiscal'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    TabOrder = 2
  end
  object bOK: TUniButton
    Left = 240
    Top = 247
    Width = 77
    Height = 32
    Hint = ''
    Caption = 'OK'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 3
    ScaleButton = False
    Color = 16750694
    OnClick = bOKClick
  end
end
