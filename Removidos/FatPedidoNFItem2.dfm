object fFatPedidoNFItem2: TfFatPedidoNFItem2
  Left = 0
  Top = 0
  Width = 1018
  Height = 1782
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel3: TUniPanel
    Left = 0
    Top = 1747
    Width = 1018
    Height = 35
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Align = alBottom
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsSolid
    Caption = ''
    Color = 5526569
    object UniSpeedButton1: TUniSpeedButton
      AlignWithMargins = True
      Left = 185
      Top = 1
      Width = 41
      Height = 33
      Hint = 'Fecha a tela de cadastro atual.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = UniSpeedButton1Click
    end
    object bAddItem: TUniSpeedButton
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 90
      Height = 33
      Hint = 'Adicionar um Item'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Salvar'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 2
    end
    object bAddTudo: TUniSpeedButton
      AlignWithMargins = True
      Left = 93
      Top = 1
      Width = 90
      Height = 33
      Hint = 'Cancelar opera'#231#227'o'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      ShowHint = True
      ParentShowHint = False
      Caption = 'Cancelar'
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 3
    end
  end
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 1018
    Height = 1747
    Hint = ''
    ActivePage = UniTabSheet3
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Ficha'#39';'#13#10'}')
    TabOrder = 1
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'Itens do Pedido'
      AutoScroll = True
      ScrollHeight = 1779
      ScrollWidth = 780
      object UniPanel10: TUniPanel
        Left = 12
        Top = 1771
        Width = 768
        Height = 8
        Hint = ''
        TabOrder = 0
        Caption = ''
      end
      object UniPanel5: TUniPanel
        Left = 12
        Top = 404
        Width = 761
        Height = 442
        Hint = ''
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Imposto sobre Circula'#231#227'o de Mercadorias e Servi'#231'os - ICMS'
        Caption = ''
        object cValor_BCICMSOp: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSOp'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Oper.'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_ICMS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSOp'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSOp: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 3
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBLookupComboBox3: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTICMSA
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTICMS_TabA'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 4
          Color = clWindow
          FieldLabel = 'CST - Tabela A'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cCSTICMS: TUniDBLookupComboBox
          Left = 8
          Top = 62
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTICMSB
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTICMS_TabB'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST -  Tabela B'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cAliquota_ICMSOp: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSOp'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
          Left = 8
          Top = 143
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSMono'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 7
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Mono'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSMono: TUniFormattedNumberEdit
          Left = 575
          Top = 143
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 8
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalICMSMonoRet: TUniFormattedNumberEdit
          Left = 575
          Top = 170
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 9
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit15: TUniDBFormattedNumberEdit
          Left = 397
          Top = 170
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSMonoRet'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit14: TUniDBFormattedNumberEdit
          Left = 270
          Top = 170
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_ICMSMonoRet'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 11
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
          Left = 8
          Top = 170
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSMonoRet'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 12
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Mono Ret'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
          Left = 397
          Top = 143
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSMono'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 13
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
          Left = 270
          Top = 143
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_ICMSMono'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 14
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_ICMSST: TUniDBFormattedNumberEdit
          Left = 397
          Top = 197
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSST'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 15
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSSTAnt: TUniFormattedNumberEdit
          Left = 575
          Top = 224
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 16
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_ICMSSTAnt: TUniDBFormattedNumberEdit
          Left = 397
          Top = 224
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSSTAnt'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 17
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCICMSSTAnt: TUniDBFormattedNumberEdit
          Left = 8
          Top = 224
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSSTAnt'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 18
          SelectOnFocus = True
          FieldLabel = 'BC - Recolhido Ant'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_ICMSSTAnt: TUniDBFormattedNumberEdit
          Left = 270
          Top = 224
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSSTAnt'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 19
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSST: TUniFormattedNumberEdit
          Left = 575
          Top = 197
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 20
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_BCICMSST: TUniDBFormattedNumberEdit
          Left = 8
          Top = 197
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSST'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 21
          SelectOnFocus = True
          FieldLabel = 'BC ICMS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_ICMSST: TUniDBFormattedNumberEdit
          Left = 270
          Top = 197
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSST'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 22
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_MVA: TUniDBFormattedNumberEdit
          Left = 270
          Top = 251
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_MVA'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 23
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCMVA: TUniDBFormattedNumberEdit
          Left = 8
          Top = 251
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCMVA'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 24
          SelectOnFocus = True
          FieldLabel = 'BC MVA'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_MVA: TUniDBFormattedNumberEdit
          Left = 397
          Top = 251
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_MVA'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 25
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalMVA: TUniFormattedNumberEdit
          Left = 575
          Top = 251
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 26
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cAliquota_ICMSDif: TUniDBFormattedNumberEdit
          Left = 270
          Top = 278
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSDif'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 27
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSDif: TUniFormattedNumberEdit
          Left = 575
          Top = 278
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 28
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_ICMSDif: TUniDBFormattedNumberEdit
          Left = 397
          Top = 278
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSDif'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 29
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit22: TUniDBFormattedNumberEdit
          Left = 8
          Top = 278
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSDif'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 30
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Diferido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit23: TUniDBFormattedNumberEdit
          Left = 8
          Top = 305
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSAnt'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 31
          SelectOnFocus = True
          FieldLabel = 'ICMS Anterior'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cICMSAnt: TUniDBCheckBox
          Left = 273
          Top = 309
          Width = 296
          Height = 18
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'ICMSST_Anterior'
          DataSource = dsPedidosNFItens
          Caption = 'ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria.'
          TabOrder = 32
          ParentColor = False
          Color = clBtnFace
          FieldLabelAlign = laRight
        end
        object cValor_OutrasICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 89
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_OutrasICMS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 33
          SelectOnFocus = True
          FieldLabel = 'Outras de ICMS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_IsentasICMS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IsentasICMS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 34
          SelectOnFocus = True
          FieldLabel = 'Isentas de ICMS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalOutrasICMS: TUniFormattedNumberEdit
          Left = 575
          Top = 89
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 35
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalIsentasICMS: TUniFormattedNumberEdit
          Left = 575
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 36
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit
          Left = 270
          Top = 331
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_ICMSPresumido'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 37
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalICMSPresumido: TUniFormattedNumberEdit
          Left = 575
          Top = 331
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 38
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit31: TUniDBFormattedNumberEdit
          Left = 397
          Top = 331
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSPresumido'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 39
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit32: TUniDBFormattedNumberEdit
          Left = 8
          Top = 332
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCICMSPresumido'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 40
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Presumido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_ICMSDesonerado: TUniFormattedNumberEdit
          Left = 575
          Top = 358
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 41
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit37: TUniDBFormattedNumberEdit
          Left = 8
          Top = 359
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_ICMSDesonerado'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 42
          SelectOnFocus = True
          FieldLabel = 'BC ICMS Presumido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit35: TUniDBFormattedNumberEdit
          Left = 8
          Top = 386
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Codigo_CredPres'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 43
          SelectOnFocus = True
          FieldLabel = 'C'#243'd Cred.Pres.'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit36: TUniDBFormattedNumberEdit
          Left = 273
          Top = 386
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Beneficio_Fiscal'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 44
          SelectOnFocus = True
          FieldLabel = 'C'#243'd Benef'#237'cio Fiscal'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel6: TUniPanel
        Left = 12
        Top = 1140
        Width = 761
        Height = 120
        Hint = ''
        TabOrder = 2
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Programa de Integra'#231#227'o Social - PIS'
        Caption = ''
        object cValor_BCPIS: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCPIS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC PIS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalPIS: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 2
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_PIS: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_PIS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_PIS: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_PIS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cCSTPIS: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTPIS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTPIS'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST PIS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_PISST'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'PIS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalPISST: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 7
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
      object UniPanel7: TUniPanel
        Left = 12
        Top = 865
        Width = 761
        Height = 176
        Hint = ''
        TabOrder = 3
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Imposto sobre Produtos Industrializados - IPI'
        Caption = ''
        object cCSTIPI: TUniDBLookupComboBox
          Left = 8
          Top = 89
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTIPI
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTIPI'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 1
          Color = clWindow
          FieldLabel = 'CST IPI'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cAliquota_IPI: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IPI'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_BCIPI: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIPI'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'BC IPI'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_IPI: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IPI'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cValor_OutrasIPI: TUniDBFormattedNumberEdit
          Left = 8
          Top = 35
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_OutrasIPI'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 5
          SelectOnFocus = True
          FieldLabel = 'Outras de IPI'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalIPI: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 6
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalOutrasIPI: TUniFormattedNumberEdit
          Left = 575
          Top = 35
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 7
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_IsentasIPI: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IsentasIPI'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Isentas de IPI'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalIsentasIPI: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 9
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit33: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IPIDevol'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = '% IPI Devolu'#231#227'o'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniFormattedNumberEdit2: TUniFormattedNumberEdit
          Left = 575
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 11
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit34: TUniDBFormattedNumberEdit
          Left = 270
          Top = 116
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_IPIDevol'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 12
          SelectOnFocus = True
          FieldLabel = '% Devol'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel8: TUniPanel
        Left = 12
        Top = 1058
        Width = 761
        Height = 67
        Hint = ''
        TabOrder = 4
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Imposto de Importa'#231#227'o - II'
        Caption = ''
        object cTotalII: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 1
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cValor_II: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_II'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cAliquota_II: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_II'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit24: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCII'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'BC II'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
      end
      object UniPanel9: TUniPanel
        Left = 12
        Top = 1276
        Width = 761
        Height = 120
        Hint = ''
        TabOrder = 5
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Contribui'#231#227'o para o Financiamento da Seguridade Social - COFINS'
        Caption = ''
        object UniDBFormattedNumberEdit25: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCCOFINS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'BC COFINS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalCOFINS: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 2
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit26: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_COFINS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit27: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_COFINS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBLookupComboBox7: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTPIS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTCOFINS'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CST COFINS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_COFINSST'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 6
          SelectOnFocus = True
          FieldLabel = 'COFINS ST'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalCOFINSST: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 7
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
      object UniPanel11: TUniPanel
        Left = 12
        Top = 1602
        Width = 761
        Height = 121
        Hint = ''
        TabOrder = 6
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Outros Valores / Rateios'
        Caption = ''
        object UniDBFormattedNumberEdit40: TUniDBFormattedNumberEdit
          Left = 8
          Top = 35
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Seguro'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'Seguro'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit38: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Frete'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = 'Frete'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit39: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Despesa'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Despesas'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalFrete: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalSeguro: TUniFormattedNumberEdit
          Left = 575
          Top = 35
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 5
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object cTotalDespesa: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 6
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
      object UniPanel12: TUniPanel
        Left = 12
        Top = 1413
        Width = 761
        Height = 176
        Hint = ''
        TabOrder = 7
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Reforma Tribut'#225'ria - IS / CBS / IBS'
        Caption = ''
        object UniDBLookupComboBox1: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTCBS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTCBS'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 1
          Color = clWindow
          FieldLabel = 'CST CBS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cTotalCBS: TUniFormattedNumberEdit
          Left = 575
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 2
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit41: TUniDBFormattedNumberEdit
          Left = 397
          Top = 8
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_CBS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit42: TUniDBFormattedNumberEdit
          Left = 8
          Top = 8
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCCBS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 4
          SelectOnFocus = True
          FieldLabel = 'BC CBS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit43: TUniDBFormattedNumberEdit
          Left = 270
          Top = 8
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_CBS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 5
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBLookupComboBox9: TUniDBLookupComboBox
          Left = 8
          Top = 89
          Width = 742
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCSTIBS
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'CSTCBS'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 6
          Color = clWindow
          FieldLabel = 'CST IBS'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object cTotalIBS: TUniFormattedNumberEdit
          Left = 575
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 7
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit44: TUniDBFormattedNumberEdit
          Left = 397
          Top = 62
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IBS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 8
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit45: TUniDBFormattedNumberEdit
          Left = 8
          Top = 62
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIBS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 9
          SelectOnFocus = True
          FieldLabel = 'BC IBS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit46: TUniDBFormattedNumberEdit
          Left = 270
          Top = 62
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IBS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit47: TUniDBFormattedNumberEdit
          Left = 270
          Top = 116
          Width = 125
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Aliquota_IS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 11
          SelectOnFocus = True
          FieldLabel = 'Al'#237'quota'
          FieldLabelWidth = 50
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit48: TUniDBFormattedNumberEdit
          Left = 8
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_BCIS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 12
          SelectOnFocus = True
          FieldLabel = 'BC IS'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit49: TUniDBFormattedNumberEdit
          Left = 397
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_IS'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 13
          SelectOnFocus = True
          FieldLabel = 'Valor'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object cTotalIS: TUniFormattedNumberEdit
          Left = 575
          Top = 116
          Width = 175
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 14
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
              's = '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Total'
          FieldLabelWidth = 40
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
      object UniPanel13: TUniPanel
        Left = 12
        Top = 12
        Width = 761
        Height = 372
        Hint = ''
        TabOrder = 8
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'CaixaSimples'#39';'#13#10'}')
        BorderStyle = ubsInset
        TitleVisible = True
        Title = 'Produto'
        Caption = ''
        object UniDBFormattedNumberEdit16: TUniDBFormattedNumberEdit
          Left = 8
          Top = 197
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Quantidade'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 1
          SelectOnFocus = True
          FieldLabel = 'Quantidade'
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
          OnExit = cQtdeExit
        end
        object UniDBFormattedNumberEdit17: TUniDBFormattedNumberEdit
          Left = 8
          Top = 251
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_Desconto'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 2
          SelectOnFocus = True
          FieldLabel = '% Desconto'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit18: TUniDBFormattedNumberEdit
          Left = 250
          Top = 251
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Desconto'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 3
          SelectOnFocus = True
          FieldLabel = 'Valor Desconto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBLookupComboBox4: TUniDBLookupComboBox
          Left = 8
          Top = 8
          Width = 736
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;NCM;Descricao'
          ListSource = dsProdutos
          KeyField = 'Codigo'
          ListFieldIndex = 2
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'Codigo_Mercadoria'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 4
          Color = clWindow
          MatchFieldWidth = False
          FieldLabel = 'Produto'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
          Mode = umNameValue
          OnExit = cProdutoExit
        end
        object UniDBLookupComboBox5: TUniDBLookupComboBox
          Left = 8
          Top = 35
          Width = 736
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Codigo;Descricao'
          ListSource = dsCFOP
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          ClearButton = True
          DataField = 'CFOP'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 5
          Color = clWindow
          FieldLabel = 'CFOP'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBLookupComboBox6: TUniDBLookupComboBox
          Left = 8
          Top = 62
          Width = 428
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          ListField = 'Tipo;Processo'
          ListSource = dsProcessos
          KeyField = 'Processo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Processo'
          DataSource = dsPedidosNFItens
          AnyMatch = True
          TabOrder = 6
          Color = clWindow
          FieldLabel = 'Processo'
          FieldLabelSeparator = ' '
          ForceSelection = True
          NormalizeString = True
          Style = csDropDown
        end
        object UniDBEdit1: TUniDBEdit
          Left = 8
          Top = 89
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'PO'
          DataSource = dsPedidosNFItens
          TabOrder = 7
          FieldLabel = 'Pedido Compra'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBEdit2: TUniDBEdit
          Left = 250
          Top = 89
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Ordem'
          DataSource = dsPedidosNFItens
          TabOrder = 8
          FieldLabel = 'Ordem'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniFormattedNumberEdit1: TUniFormattedNumberEdit
          Left = 8
          Top = 278
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsInset
          Alignment = taRightJustify
          TabOrder = 9
          TabStop = False
          Color = 15720158
          ReadOnly = True
          FieldLabel = 'Total L'#237'quido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniDBFormattedNumberEdit19: TUniDBFormattedNumberEdit
          Left = 8
          Top = 224
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Unitario'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 10
          SelectOnFocus = True
          FieldLabel = 'Valor Unit'#225'rio'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
          OnExit = cValor_UnitarioExit
        end
        object UniDBEdit3: TUniDBEdit
          Left = 440
          Top = 62
          Width = 304
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'DUIMP'
          DataSource = dsPedidosNFItens
          TabOrder = 11
          FieldLabel = 'N'#186' DUIMP'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBEdit4: TUniDBEdit
          Left = 8
          Top = 116
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'NCM'
          DataSource = dsPedidosNFItens
          TabOrder = 12
          FieldLabel = 'NCM'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBEdit5: TUniDBEdit
          Left = 250
          Top = 116
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'UM'
          DataSource = dsPedidosNFItens
          TabOrder = 13
          FieldLabel = 'Unidade Medida'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit20: TUniDBFormattedNumberEdit
          Left = 8
          Top = 170
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Percentual_Lucro'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 14
          SelectOnFocus = True
          FieldLabel = '% Desconto'
          FieldLabelSeparator = ' '
          DecimalPrecision = 4
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit21: TUniDBFormattedNumberEdit
          Left = 250
          Top = 170
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Valor_Lucro'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 15
          SelectOnFocus = True
          FieldLabel = 'Valor Desconto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object bLoteDet: TUniButton
          Left = 250
          Top = 197
          Width = 90
          Height = 26
          Hint = ''
          Caption = 'Lote/Detalhe'
          TabOrder = 16
        end
        object bSerCha: TUniButton
          Left = 342
          Top = 197
          Width = 90
          Height = 26
          Hint = ''
          Caption = 'Serial/Chassi'
          TabOrder = 17
        end
        object UniDBEdit6: TUniDBEdit
          Left = 8
          Top = 305
          Width = 502
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'ChaveNF_Referencia'
          DataSource = dsPedidosNFItens
          TabOrder = 18
          InputMask.MaskChar = #0
          InputMask.UnmaskText = True
          InputType = 'text'
          FieldLabel = 'Nota Refer'#234'ncia'
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object UniDBDateTimePicker1: TUniDBDateTimePicker
          Left = 512
          Top = 305
          Width = 208
          Height = 25
          Hint = ''
          DataField = 'DataNF_Referencia'
          DataSource = dsPedidosNFItens
          DateTime = 45988.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 19
          BorderStyle = ubsInset
          FieldLabel = 'Data'
          FieldLabelWidth = 50
        end
        object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
          Left = 8
          Top = 143
          Width = 240
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Liquido'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 20
          SelectOnFocus = True
          FieldLabel = 'Peso L'#237'quido'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
          Left = 250
          Top = 143
          Width = 260
          Height = 25
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          DataField = 'Peso_Bruto'
          DataSource = dsPedidosNFItens
          Alignment = taRightJustify
          TabOrder = 21
          SelectOnFocus = True
          FieldLabel = 'Peso Bruto'
          FieldLabelSeparator = ' '
          DecimalSeparator = ','
          ThousandSeparator = '.'
          BorderStyle = ubsInset
        end
        object UniPanel2: TUniPanel
          Left = 540
          Top = 124
          Width = 204
          Height = 142
          Hint = ''
          TabOrder = 22
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CaixaSimples'#39';'#13#10'}')
          BorderStyle = ubsInset
          Caption = ''
          object UniFormattedNumberEdit3: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 5
            Top = 4
            Width = 194
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Right = 4
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            Align = alTop
            TabOrder = 1
            TabStop = False
            Color = 15720158
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDesativado'#39';'#13#10'}')
            FieldLabel = 'Estoque Min'#237'mo'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniFormattedNumberEdit4: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 5
            Top = 112
            Width = 194
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 4
            ShowHint = True
            ParentShowHint = False
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            Align = alTop
            TabOrder = 2
            TabStop = False
            Color = 15720158
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDesativado'#39';'#13#10'}')
            FieldLabel = 'Estoque Atual'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniFormattedNumberEdit5: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 5
            Top = 85
            Width = 194
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 4
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            Align = alTop
            TabOrder = 3
            TabStop = False
            Color = 15720158
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDesativado'#39';'#13#10'}')
            FieldLabel = 'Invent'#225'rio Atual'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniFormattedNumberEdit11: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 5
            Top = 31
            Width = 194
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 4
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            Align = alTop
            TabOrder = 4
            TabStop = False
            Color = 15720158
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDesativado'#39';'#13#10'}')
            FieldLabel = 'Detalhe/Lote'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
          object UniFormattedNumberEdit12: TUniFormattedNumberEdit
            AlignWithMargins = True
            Left = 5
            Top = 58
            Width = 194
            Height = 25
            Hint = ''
            Margins.Left = 4
            Margins.Top = 1
            Margins.Right = 4
            Margins.Bottom = 1
            ShowHint = True
            ParentShowHint = False
            BorderStyle = ubsInset
            Alignment = taRightJustify
            ParentFont = False
            Font.Style = [fsBold]
            Align = alTop
            TabOrder = 5
            TabStop = False
            Color = 15720158
            ReadOnly = True
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'CampoDesativado'#39';'#13#10'}')
            FieldLabel = 'Estoque Navio'
            FieldLabelWidth = 80
            FieldLabelSeparator = ' '
            DecimalPrecision = 3
            DecimalSeparator = ','
            ThousandSeparator = '.'
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'F'#243'rmulas'
      object gFormula: TUniStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1004
        Height = 506
        Hint = ''
        HeaderTitle = 'F'#211'RMULAS DOS CALCULOS DO PEDIDO'
        HeaderTitleAlign = taCenter
        CellCursor = crHandPoint
        FixedColor = 15450856
        FixedRows = 0
        RowCount = 1
        ColCount = 4
        DefaultRowHeight = 20
        Options = [goVertLine, goHorzLine, goDrawFocusSelected, goEditing]
        CustomizableCells = False
        ShowColumnTitles = True
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = 'Campo'
            Width = 140
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'F'#243'rmula'
            Width = 770
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Valores'
            Width = 180
          end
          item
            Title.Alignment = taCenter
            Title.Caption = 'Resultado'
            Width = 100
          end>
        StripeRows = True
        ForceFit = True
        Align = alTop
        TabOrder = 0
      end
      object cLog: TUniMemo
        AlignWithMargins = True
        Left = 3
        Top = 515
        Width = 1004
        Height = 1201
        Hint = ''
        ScrollBars = ssBoth
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'JetBrains Mono'
        Align = alClient
        Color = clWhite
        TabOrder = 1
        FieldLabel = 'LOG'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
    end
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Item - Teste com Grid'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Ficha'#39';'#13#10'}')
      AutoScroll = True
      ScrollHeight = 794
      ScrollWidth = 1067
      object cQtde: TUniDBFormattedNumberEdit
        Left = 21
        Top = 160
        Width = 166
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Quantidade'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 5
        SelectOnFocus = True
        FieldLabel = 'Quantidade'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        DecimalPrecision = 3
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
        OnExit = cQtdeExit
      end
      object cPercentual_Desconto: TUniDBFormattedNumberEdit
        Left = 21
        Top = 212
        Width = 166
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Percentual_Desconto'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 8
        SelectOnFocus = True
        FieldLabel = '% Desconto'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        DecimalPrecision = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cValor_Desconto: TUniDBFormattedNumberEdit
        Left = 194
        Top = 212
        Width = 166
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_Desconto'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 9
        SelectOnFocus = True
        FieldLabel = 'Valor Desconto'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
      end
      object cProduto: TUniDBLookupComboBox
        Left = 21
        Top = 7
        Width = 750
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;NCM;Descricao'
        ListSource = dsProdutos
        KeyField = 'Codigo'
        ListFieldIndex = 2
        ClearButton = True
        DataField = 'Codigo_Mercadoria'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 0
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'Produto'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
        Mode = umNameValue
        OnExit = cProdutoExit
      end
      object cCFOP: TUniDBLookupComboBox
        Left = 21
        Top = 58
        Width = 750
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Codigo;Descricao'
        ListSource = dsCFOP
        KeyField = 'Codigo'
        ListFieldIndex = 1
        ClearButton = True
        DataField = 'CFOP'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 1
        Color = clWindow
        MatchFieldWidth = False
        FieldLabel = 'CFOP'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cProcesso: TUniDBLookupComboBox
        Left = 21
        Top = 109
        Width = 340
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        ListField = 'Tipo;Processo'
        ListSource = dsProcessos
        KeyField = 'Processo'
        ListFieldIndex = 1
        DataField = 'Processo'
        DataSource = dsPedidosNFItens
        AnyMatch = True
        TabOrder = 2
        Color = clWindow
        FieldLabel = 'Processo'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        ForceSelection = True
        NormalizeString = True
        Style = csDropDown
      end
      object cPO: TUniDBEdit
        Left = 368
        Top = 109
        Width = 180
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'PO'
        DataSource = dsPedidosNFItens
        TabOrder = 3
        FieldLabel = 'Pedido Compra'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object cOrdem: TUniDBEdit
        Left = 553
        Top = 109
        Width = 218
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Ordem'
        DataSource = dsPedidosNFItens
        TabOrder = 4
        FieldLabel = 'Ordem'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object cValor_Total: TUniFormattedNumberEdit
        Left = 368
        Top = 160
        Width = 180
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        BorderStyle = ubsSolid
        Alignment = taRightJustify
        TabOrder = 7
        TabStop = False
        Color = 15720158
        ReadOnly = True
        FieldLabel = 'Total'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        DecimalSeparator = ','
        ThousandSeparator = '.'
      end
      object cValor_Unitario: TUniDBFormattedNumberEdit
        Left = 194
        Top = 160
        Width = 166
        Height = 50
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        DataField = 'Valor_Unitario'
        DataSource = dsPedidosNFItens
        Alignment = taRightJustify
        TabOrder = 6
        SelectOnFocus = True
        FieldLabel = 'Valor Unit'#225'rio'
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        DecimalPrecision = 4
        DecimalSeparator = ','
        ThousandSeparator = '.'
        BorderStyle = ubsSolid
        OnExit = cValor_UnitarioExit
      end
      object GradeImpostos: TUniDBGrid
        Left = 21
        Top = 268
        Width = 1046
        Height = 369
        Hint = ''
        RowEditor = True
        DataSource = dstImpostos
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow, dgRowNumbers]
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsInset
        TrackOver = False
        TabOrder = 10
        Columns = <
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'VALORES / IMPOSTOS CALCULADOS'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 291
          end
          item
            FieldName = 'Aliquota'
            Title.Alignment = taCenter
            Title.Caption = 'AL'#205'QUOTA'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 68
          end
          item
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Caption = 'VALOR'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 105
          end
          item
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 119
          end
          item
            FieldName = 'CST'
            Title.Alignment = taCenter
            Title.Caption = 'CST'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 47
          end
          item
            FieldName = 'CST_Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'CST DESCRI'#199#195'O'
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 342
          end>
      end
      object UniPanel1: TUniPanel
        Left = 14
        Top = 789
        Width = 934
        Height = 5
        Hint = ''
        TabOrder = 11
        BorderStyle = ubsInset
        Caption = ''
      end
      object UniPanel4: TUniPanel
        Left = 811
        Top = 15
        Width = 256
        Height = 191
        Hint = ''
        TabOrder = 12
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Painel'#39';'#13#10'}')
        BorderStyle = ubsInset
        Caption = ''
        object UniFormattedNumberEdit6: TUniFormattedNumberEdit
          AlignWithMargins = True
          Left = 11
          Top = 11
          Width = 234
          Height = 30
          Hint = ''
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 2
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsSolid
          Alignment = taRightJustify
          ParentFont = False
          Font.Style = [fsBold]
          Align = alTop
          TabOrder = 1
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Estoque Min'#237'mo'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniFormattedNumberEdit7: TUniFormattedNumberEdit
          AlignWithMargins = True
          Left = 11
          Top = 45
          Width = 234
          Height = 30
          Hint = ''
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 2
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsSolid
          Alignment = taRightJustify
          ParentFont = False
          Font.Style = [fsBold]
          Align = alTop
          TabOrder = 2
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Estoque Atual'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniFormattedNumberEdit8: TUniFormattedNumberEdit
          AlignWithMargins = True
          Left = 11
          Top = 79
          Width = 234
          Height = 30
          Hint = ''
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 2
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsSolid
          Alignment = taRightJustify
          ParentFont = False
          Font.Style = [fsBold]
          Align = alTop
          TabOrder = 3
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Invent'#225'rio Atual'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniFormattedNumberEdit9: TUniFormattedNumberEdit
          AlignWithMargins = True
          Left = 11
          Top = 113
          Width = 234
          Height = 30
          Hint = ''
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 2
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsSolid
          Alignment = taRightJustify
          ParentFont = False
          Font.Style = [fsBold]
          Align = alTop
          TabOrder = 4
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Detalhe/Lote'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
        object UniFormattedNumberEdit10: TUniFormattedNumberEdit
          AlignWithMargins = True
          Left = 11
          Top = 147
          Width = 234
          Height = 30
          Hint = ''
          Margins.Left = 10
          Margins.Top = 2
          Margins.Right = 10
          Margins.Bottom = 10
          ShowHint = True
          ParentShowHint = False
          BorderStyle = ubsSolid
          Alignment = taRightJustify
          ParentFont = False
          Font.Style = [fsBold]
          Align = alTop
          TabOrder = 5
          TabStop = False
          Color = 15720158
          ReadOnly = True
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'CampoDesativado'#39';'#13#10'}')
          FieldLabel = 'Estoque Navio'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          DecimalPrecision = 3
          DecimalSeparator = ','
          ThousandSeparator = '.'
        end
      end
    end
  end
  object PedidosNFItens: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select *'
      'from PedidosNFitens'
      '')
    Left = 576
    Top = 146
    object PedidosNFItensPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'Pedido'
    end
    object PedidosNFItensEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object PedidosNFItensItem: TSmallintField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object PedidosNFItensOperacao: TSmallintField
      FieldName = 'Operacao'
      Origin = 'Operacao'
    end
    object PedidosNFItensCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object PedidosNFItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object PedidosNFItensCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object PedidosNFItensDescricao_Mercadoria: TMemoField
      FieldName = 'Descricao_Mercadoria'
      Origin = 'Descricao_Mercadoria'
      BlobType = ftMemo
    end
    object PedidosNFItensNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      FixedChar = True
      Size = 8
    end
    object PedidosNFItensEXTIPI: TSmallintField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
    end
    object PedidosNFItensUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensAdicao: TSmallintField
      FieldName = 'Adicao'
      Origin = 'Adicao'
    end
    object PedidosNFItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object PedidosNFItensPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object PedidosNFItensMovimenta_Inventario: TBooleanField
      FieldName = 'Movimenta_Inventario'
      Origin = 'Movimenta_Inventario'
    end
    object PedidosNFItensMovimenta_Estoque: TBooleanField
      FieldName = 'Movimenta_Estoque'
      Origin = 'Movimenta_Estoque'
    end
    object PedidosNFItensModalidade_BCICMS: TSmallintField
      FieldName = 'Modalidade_BCICMS'
      Origin = 'Modalidade_BCICMS'
    end
    object PedidosNFItensModalidade_BCICMSST: TSmallintField
      FieldName = 'Modalidade_BCICMSST'
      Origin = 'Modalidade_BCICMSST'
    end
    object PedidosNFItensProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'Processo'
      Size = 15
    end
    object PedidosNFItensRateio_ICMSProcesso: TFloatField
      FieldName = 'Rateio_ICMSProcesso'
      Origin = 'Rateio_ICMSProcesso'
    end
    object PedidosNFItensApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'Apuracao_PISCOFINS'
    end
    object PedidosNFItensFinalidade_Mercadoria: TSmallintField
      FieldName = 'Finalidade_Mercadoria'
      Origin = 'Finalidade_Mercadoria'
    end
    object PedidosNFItensRegistro_Adicao: TIntegerField
      FieldName = 'Registro_Adicao'
      Origin = 'Registro_Adicao'
    end
    object PedidosNFItensICMSST_Anterior: TBooleanField
      FieldName = 'ICMSST_Anterior'
      Origin = 'ICMSST_Anterior'
    end
    object PedidosNFItensNumeroNF_Referencia: TIntegerField
      FieldName = 'NumeroNF_Referencia'
      Origin = 'NumeroNF_Referencia'
    end
    object PedidosNFItensChaveNF_Referencia: TStringField
      FieldName = 'ChaveNF_Referencia'
      Origin = 'ChaveNF_Referencia'
      EditMask = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#'
      Size = 44
    end
    object PedidosNFItensDataNF_Referencia: TDateField
      FieldName = 'DataNF_Referencia'
      Origin = 'DataNF_Referencia'
    end
    object PedidosNFItensNumeroNF_Terceiros: TStringField
      FieldName = 'NumeroNF_Terceiros'
      Origin = 'NumeroNF_Terceiros'
      Size = 44
    end
    object PedidosNFItensDataNF_Terceiros: TDateField
      FieldName = 'DataNF_Terceiros'
      Origin = 'DataNF_Terceiros'
    end
    object PedidosNFItensDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'Devolucao'
    end
    object PedidosNFItensMovimenta_EstoqueRep: TBooleanField
      FieldName = 'Movimenta_EstoqueRep'
      Origin = 'Movimenta_EstoqueRep'
    end
    object PedidosNFItensCEST: TStringField
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 7
    end
    object PedidosNFItensPO: TStringField
      FieldName = 'PO'
      Origin = 'PO'
      Size = 15
    end
    object PedidosNFItensOrdem: TIntegerField
      FieldName = 'Ordem'
      Origin = 'Ordem'
    end
    object PedidosNFItensFator_Cambio: TFloatField
      FieldName = 'Fator_Cambio'
      Origin = 'Fator_Cambio'
    end
    object PedidosNFItensOrigem_Mercadoria: TSmallintField
      FieldName = 'Origem_Mercadoria'
      Origin = 'Origem_Mercadoria'
    end
    object PedidosNFItensNumero_BL: TStringField
      FieldName = 'Numero_BL'
      Origin = 'Numero_BL'
      Size = 15
    end
    object PedidosNFItensCodigo_CredPres: TStringField
      FieldName = 'Codigo_CredPres'
      Origin = 'Codigo_CredPres'
      Size = 8
    end
    object PedidosNFItensSequencia: TIntegerField
      FieldName = 'Sequencia'
      Origin = 'Sequencia'
    end
    object PedidosNFItensSequencia_SISCOMEX: TIntegerField
      FieldName = 'Sequencia_SISCOMEX'
      Origin = 'Sequencia_SISCOMEX'
      DisplayFormat = ',##0.0000'
    end
    object PedidosNFItensValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
      Origin = 'Valor_BCDIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCDIFALST: TCurrencyField
      FieldName = 'Valor_BCDIFALST'
      Origin = 'Valor_BCDIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
      Origin = 'Valor_BCICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
      Origin = 'Valor_BCICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSPresumido: TCurrencyField
      FieldName = 'Valor_BCICMSPresumido'
      Origin = 'Valor_BCICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINSST: TCurrencyField
      FieldName = 'Valor_COFINSST'
      Origin = 'Valor_COFINSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
      Origin = 'Valor_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
      Origin = 'Valor_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSPresumido: TCurrencyField
      FieldName = 'Valor_ICMSPresumido'
      Origin = 'Valor_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PISST: TCurrencyField
      FieldName = 'Valor_PISST'
      Origin = 'Valor_PISST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensFator_Produto: TFloatField
      FieldName = 'Fator_Produto'
      Origin = 'Fator_Produto'
    end
    object PedidosNFItensValor_Unitario: TFloatField
      FieldName = 'Valor_Unitario'
      Origin = 'Valor_Unitario'
      Required = True
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
      DisplayFormat = ',##0.000'
    end
    object PedidosNFItensValor_BCIPI: TCurrencyField
      FieldName = 'Valor_BCIPI'
      Origin = 'Valor_BCIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_II: TFloatField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSST: TCurrencyField
      FieldName = 'Valor_BCICMSST'
      Origin = 'Valor_BCICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSST: TFloatField
      FieldName = 'Aliquota_ICMSST'
      Origin = 'Aliquota_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSST: TCurrencyField
      FieldName = 'Valor_ICMSST'
      Origin = 'Valor_ICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCMVA: TCurrencyField
      FieldName = 'Valor_BCMVA'
      Origin = 'Valor_BCMVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_MVA: TFloatField
      FieldName = 'Aliquota_MVA'
      Origin = 'Aliquota_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MVA: TCurrencyField
      FieldName = 'Valor_MVA'
      Origin = 'Valor_MVA'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'Valor_BCPIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'Valor_PIS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCCOFINS: TCurrencyField
      FieldName = 'Valor_BCCOFINS'
      Origin = 'Valor_BCCOFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'Valor_COFINS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Frete: TCurrencyField
      FieldName = 'Valor_Frete'
      Origin = 'Valor_Frete'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'Valor_Seguro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Despesa: TCurrencyField
      FieldName = 'Valor_Despesa'
      Origin = 'Valor_Despesa'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'Valor_BCFCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'Valor_FCPST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'Valor_BCFCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'Valor_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'Valor_BCICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDest: TFloatField
      FieldName = 'Aliquota_ICMSDest'
      Origin = 'Aliquota_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'Valor_ICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFAL: TCurrencyField
      FieldName = 'Valor_DIFAL'
      Origin = 'Valor_DIFAL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALOrig: TFloatField
      FieldName = 'Percentual_DIFALOrig'
      Origin = 'Percentual_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALOrig: TCurrencyField
      FieldName = 'Valor_DIFALOrig'
      Origin = 'Valor_DIFALOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_DIFALDest: TFloatField
      FieldName = 'Percentual_DIFALDest'
      Origin = 'Percentual_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALDest: TCurrencyField
      FieldName = 'Valor_DIFALDest'
      Origin = 'Valor_DIFALDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_DIFALST: TCurrencyField
      FieldName = 'Valor_DIFALST'
      Origin = 'Valor_DIFALST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_FCP: TFloatField
      FieldName = 'Aliquota_FCP'
      Origin = 'Aliquota_FCP'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPDest: TCurrencyField
      FieldName = 'Valor_FCPDest'
      Origin = 'Valor_FCPDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_FCPICMSOrig: TFloatField
      FieldName = 'Percentual_FCPICMSOrig'
      Origin = 'Percentual_FCPICMSOrig'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_FCPICMSDest: TCurrencyField
      FieldName = 'Valor_FCPICMSDest'
      Origin = 'Valor_FCPICMSDest'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'Valor_ICMSDesonerado'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSSTAnt: TCurrencyField
      FieldName = 'Valor_ICMSSTAnt'
      Origin = 'Valor_ICMSSTAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSAnt: TCurrencyField
      FieldName = 'Valor_ICMSAnt'
      Origin = 'Valor_ICMSAnt'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'Valor_CIF'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Pauta: TCurrencyField
      FieldName = 'Valor_Pauta'
      Origin = 'Valor_Pauta'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      Origin = 'Valor_AFRMM'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCII: TCurrencyField
      FieldName = 'Valor_BCII'
      Origin = 'Valor_BCII'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'Valor_IsentasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'Valor_OutrasICMS'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'Valor_IsentasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'Valor_OutrasIPI'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_BCICMSOp: TCurrencyField
      FieldName = 'Valor_BCICMSOp'
      Origin = 'Valor_BCICMSOp'
    end
    object PedidosNFItensAliquota_ICMSOp: TFloatField
      FieldName = 'Aliquota_ICMSOp'
      Origin = 'Aliquota_ICMSOp'
    end
    object PedidosNFItensAliquota_ICMSEntrada: TFloatField
      FieldName = 'Aliquota_ICMSEntrada'
      Origin = 'Aliquota_ICMSEntrada'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSPresumido: TFloatField
      FieldName = 'Aliquota_ICMSPresumido'
      Origin = 'Aliquota_ICMSPresumido'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSDif: TFloatField
      FieldName = 'Aliquota_ICMSDif'
      Origin = 'Aliquota_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSOp: TCurrencyField
      FieldName = 'Valor_ICMSOp'
      Origin = 'Valor_ICMSOp'
    end
    object PedidosNFItensValor_BCICMSApuracao: TCurrencyField
      FieldName = 'Valor_BCICMSApuracao'
      Origin = 'Valor_BCICMSApuracao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSApuracao: TCurrencyField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'Valor_ICMSApuracao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_MediaBCR: TCurrencyField
      FieldName = 'Valor_MediaBCR'
      Origin = 'Valor_MediaBCR'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'Valor_TotalNota'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Impostos: TCurrencyField
      FieldName = 'Valor_Impostos'
      Origin = 'Valor_Impostos'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Inventario: TCurrencyField
      FieldName = 'Valor_Inventario'
      Origin = 'Valor_Inventario'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Dumping: TCurrencyField
      FieldName = 'Valor_Dumping'
      Origin = 'Valor_Dumping'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Lucro: TFloatField
      FieldName = 'Percentual_Lucro'
      Origin = 'Percentual_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Lucro: TCurrencyField
      FieldName = 'Valor_Lucro'
      Origin = 'Valor_Lucro'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'Valor_PIS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'Valor_COFINS2'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'Aliquota_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'Valor_IRPJ'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'Aliquota_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'Valor_CSLL'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_FreteTerrNac: TFloatField
      FieldName = 'Rateio_FreteTerrNac'
      Origin = 'Rateio_FreteTerrNac'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Desconto: TFloatField
      FieldName = 'Percentual_Desconto'
      Origin = 'Percentual_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Desconto: TFloatField
      FieldName = 'Valor_Desconto'
      Origin = 'Valor_Desconto'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_PISRed: TFloatField
      FieldName = 'Aliquota_PISRed'
      Origin = 'Aliquota_PISRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_COFINSRed: TFloatField
      FieldName = 'Aliquota_COFINSRed'
      Origin = 'Aliquota_COFINSRed'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensRateio_SISCOMEX: TFloatField
      FieldName = 'Rateio_SISCOMEX'
      Origin = 'Rateio_SISCOMEX'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Comissao: TFloatField
      FieldName = 'Percentual_Comissao'
      Origin = 'Percentual_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_Comissao: TCurrencyField
      FieldName = 'Valor_Comissao'
      Origin = 'Valor_Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_RedICMSST: TFloatField
      FieldName = 'Percentual_RedICMSST'
      Origin = 'Percentual_RedICMSST'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
      Origin = 'Valor_ICMSDif'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_Beneficio: TFloatField
      FieldName = 'Percentual_Beneficio'
      Origin = 'Percentual_Beneficio'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMono: TFloatField
      FieldName = 'Percentual_ICMSMono'
      Origin = 'Percentual_ICMSMono'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensPercentual_ICMSMonoRet: TFloatField
      FieldName = 'Percentual_ICMSMonoRet'
      Origin = 'Percentual_ICMSMonoRet'
      DisplayFormat = ',##0.00'
    end
    object PedidosNFItensAliquota_ICMSOpRed: TFloatField
      FieldName = 'Aliquota_ICMSOpRed'
      Origin = 'Aliquota_ICMSOpRed'
    end
    object PedidosNFItensValor_ICMSOpRed: TCurrencyField
      FieldName = 'Valor_ICMSOpRed'
      Origin = 'Valor_ICMSOpRed'
    end
    object PedidosNFItensAliquota_ICMSOpIntegral: TFloatField
      FieldName = 'Aliquota_ICMSOpIntegral'
      Origin = 'Aliquota_ICMSOpIntegral'
    end
    object PedidosNFItensAliquota_ICMSOPRed2: TFloatField
      FieldName = 'Aliquota_ICMSOPRed2'
      Origin = 'Aliquota_ICMSOPRed2'
    end
    object PedidosNFItensCSTICMS_TabA: TStringField
      FieldName = 'CSTICMS_TabA'
      Origin = 'CSTICMS_TabA'
      FixedChar = True
      Size = 2
    end
    object PedidosNFItensCSTICMS_TabB: TStringField
      FieldName = 'CSTICMS_TabB'
      Origin = 'CSTICMS_TabB'
      FixedChar = True
      Size = 3
    end
    object PedidosNFItensES: TSmallintField
      FieldName = 'ES'
      Origin = 'ES'
    end
    object PedidosNFItensVeiculo: TBooleanField
      FieldName = 'Veiculo'
      Origin = 'Veiculo'
    end
    object PedidosNFItensDUIMP: TStringField
      FieldName = 'DUIMP'
      Origin = 'DUIMP'
      Size = 15
    end
    object PedidosNFItensEmbarque: TIntegerField
      FieldName = 'Embarque'
      Origin = 'Embarque'
    end
    object PedidosNFItensBL: TStringField
      FieldName = 'BL'
      Origin = 'BL'
      Size = 15
    end
    object PedidosNFItensValor_BCIBS: TCurrencyField
      FieldName = 'Valor_BCIBS'
      Origin = 'Valor_BCIBS'
    end
    object PedidosNFItensAliquota_IBS: TFloatField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
    end
    object PedidosNFItensValor_IBS: TCurrencyField
      FieldName = 'Valor_IBS'
      Origin = 'Valor_IBS'
    end
    object PedidosNFItensValor_BCCBS: TCurrencyField
      FieldName = 'Valor_BCCBS'
      Origin = 'Valor_BCCBS'
    end
    object PedidosNFItensAliquota_CBS: TFloatField
      FieldName = 'Aliquota_CBS'
      Origin = 'Aliquota_CBS'
    end
    object PedidosNFItensValor_CBS: TCurrencyField
      FieldName = 'Valor_CBS'
      Origin = 'Valor_CBS'
    end
    object PedidosNFItensValor_BCIS: TCurrencyField
      FieldName = 'Valor_BCIS'
      Origin = 'Valor_BCIS'
    end
    object PedidosNFItensAliquota_IS: TFloatField
      FieldName = 'Aliquota_IS'
      Origin = 'Aliquota_IS'
    end
    object PedidosNFItensValor_IS: TCurrencyField
      FieldName = 'Valor_IS'
      Origin = 'Valor_IS'
    end
    object PedidosNFItensCSTIBS: TStringField
      FieldName = 'CSTIBS'
      Origin = 'CSTIBS'
      Size = 3
    end
    object PedidosNFItensCSTCBS: TStringField
      FieldName = 'CSTCBS'
      Origin = 'CSTCBS'
      Size = 3
    end
    object PedidosNFItensAliquota_ICMSSTAnt: TFloatField
      FieldName = 'Aliquota_ICMSSTAnt'
      Origin = 'Aliquota_ICMSSTAnt'
    end
    object PedidosNFItensValor_BCICMSSTAnt: TCurrencyField
      FieldName = 'Valor_BCICMSSTAnt'
      Origin = 'Valor_BCICMSSTAnt'
    end
    object PedidosNFItensValor_BCICMSDif: TCurrencyField
      FieldName = 'Valor_BCICMSDif'
      Origin = 'Valor_BCICMSDif'
    end
    object PedidosNFItensValor_IPIDevol: TCurrencyField
      FieldName = 'Valor_IPIDevol'
      Origin = 'Valor_IPIDevol'
    end
    object PedidosNFItensPercentual_IPIDevol: TFloatField
      FieldName = 'Percentual_IPIDevol'
      Origin = 'Percentual_IPIDevol'
    end
    object PedidosNFItensBeneficio_Fiscal: TStringField
      FieldName = 'Beneficio_Fiscal'
      Origin = 'Beneficio_Fiscal'
      FixedChar = True
      Size = 10
    end
  end
  object dsPedidosNFItens: TDataSource
    DataSet = PedidosNFItens
    Left = 577
    Top = 190
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao = Descricao_Reduzida'
      '      ,NCM'
      '      ,Valor_Venda'
      '      ,Valor_ConsumidorFinal'
      '      ,Valor_CustoMedio'
      '      ,Valor_Entrada'
      '      ,Aliquota_IPI'
      '      ,Valor_IPI'
      '      ,Aliquota_II'
      '      ,Valor_II'
      '      ,Aliquota_PIS'
      '      ,Aliquota_COFINS'
      '      ,Aliquota_PISEntrada'
      '      ,Aliquota_COFINSEntrada'
      '      ,Aliquota_PISSaida'
      '      ,Aliquota_COFINSSaida'
      '      ,Reducao_PIS'
      '      ,Reducao_COFINS'
      '      ,CSTPIS_AliquotaUM'
      '      ,CSTPIS_Monofasica'
      '      ,CSTPIS_AliquotaZero'
      '      ,CSTPIS_Isenta'
      '      ,CSTPIS_SemIncidencia'
      '      ,CSTPIS_Suspensao'
      '      ,CSTPIS_Outras'
      '      ,Origem'
      '      ,ICMS_ForaEstadoEnt'
      '      ,ICMS_ForaEstadoSai'
      '      ,ICMS_DentroEstadoEnt'
      '      ,ICMS_DentroEstadoSai'
      '      ,ICMS_DentroEstadoSimples'
      '      ,Aliquota_IBS'
      '      ,Tabela_CAMEX'
      '      ,CSTICMS_Entrada'
      '      ,CSTICMS_Saida'
      '      ,Beneficio_FiscalEnt'
      '      ,Beneficio_FiscalSai'
      '      ,Codigo_Fabricante'
      '      ,UM'
      '      ,Peso_Liquido'
      '      ,Peso_Bruto'
      'from Produtos'
      'where Desativado <> 1'
      'and isnull(NCM, '#39#39') <> '#39#39' '
      'order by Descricao')
    Left = 743
    Top = 146
    object ProdutosCodigo: TIntegerField
      Alignment = taCenter
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      DisplayFormat = '0000000000;0'
    end
    object ProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 60
    end
    object ProdutosValor_Venda: TCurrencyField
      FieldName = 'Valor_Venda'
      Origin = 'Valor_Venda'
    end
    object ProdutosValor_ConsumidorFinal: TCurrencyField
      FieldName = 'Valor_ConsumidorFinal'
      Origin = 'Valor_ConsumidorFinal'
    end
    object ProdutosValor_CustoMedio: TCurrencyField
      FieldName = 'Valor_CustoMedio'
      Origin = 'Valor_CustoMedio'
    end
    object ProdutosValor_Entrada: TCurrencyField
      FieldName = 'Valor_Entrada'
      Origin = 'Valor_Entrada'
    end
    object ProdutosValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
      Origin = 'Valor_IPI'
    end
    object ProdutosNCM: TStringField
      Alignment = taCenter
      FieldName = 'NCM'
      Origin = 'NCM'
      EditMask = '####.##.####;0'
      Size = 10
    end
    object ProdutosAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
      Origin = 'Aliquota_IPI'
    end
    object ProdutosAliquota_II: TFloatField
      FieldName = 'Aliquota_II'
      Origin = 'Aliquota_II'
    end
    object ProdutosValor_II: TCurrencyField
      FieldName = 'Valor_II'
      Origin = 'Valor_II'
    end
    object ProdutosReducao_PIS: TFloatField
      FieldName = 'Reducao_PIS'
      Origin = 'Reducao_PIS'
    end
    object ProdutosReducao_COFINS: TFloatField
      FieldName = 'Reducao_COFINS'
      Origin = 'Reducao_COFINS'
    end
    object ProdutosAliquota_PIS: TFloatField
      FieldName = 'Aliquota_PIS'
      Origin = 'Aliquota_PIS'
    end
    object ProdutosAliquota_COFINS: TFloatField
      FieldName = 'Aliquota_COFINS'
      Origin = 'Aliquota_COFINS'
    end
    object ProdutosAliquota_PISEntrada: TFloatField
      FieldName = 'Aliquota_PISEntrada'
      Origin = 'Aliquota_PISEntrada'
    end
    object ProdutosAliquota_COFINSEntrada: TFloatField
      FieldName = 'Aliquota_COFINSEntrada'
      Origin = 'Aliquota_COFINSEntrada'
    end
    object ProdutosAliquota_PISSaida: TFloatField
      FieldName = 'Aliquota_PISSaida'
      Origin = 'Aliquota_PISSaida'
    end
    object ProdutosAliquota_COFINSSaida: TFloatField
      FieldName = 'Aliquota_COFINSSaida'
      Origin = 'Aliquota_COFINSSaida'
    end
    object ProdutosCSTPIS_AliquotaUM: TBooleanField
      FieldName = 'CSTPIS_AliquotaUM'
      Origin = 'CSTPIS_AliquotaUM'
    end
    object ProdutosCSTPIS_Monofasica: TBooleanField
      FieldName = 'CSTPIS_Monofasica'
      Origin = 'CSTPIS_Monofasica'
    end
    object ProdutosCSTPIS_AliquotaZero: TBooleanField
      FieldName = 'CSTPIS_AliquotaZero'
      Origin = 'CSTPIS_AliquotaZero'
    end
    object ProdutosCSTPIS_Isenta: TBooleanField
      FieldName = 'CSTPIS_Isenta'
      Origin = 'CSTPIS_Isenta'
    end
    object ProdutosCSTPIS_SemIncidencia: TBooleanField
      FieldName = 'CSTPIS_SemIncidencia'
      Origin = 'CSTPIS_SemIncidencia'
    end
    object ProdutosCSTPIS_Suspensao: TBooleanField
      FieldName = 'CSTPIS_Suspensao'
      Origin = 'CSTPIS_Suspensao'
    end
    object ProdutosCSTPIS_Outras: TBooleanField
      FieldName = 'CSTPIS_Outras'
      Origin = 'CSTPIS_Outras'
    end
    object ProdutosOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'Origem'
      FixedChar = True
      Size = 1
    end
    object ProdutosICMS_ForaEstadoEnt: TFloatField
      FieldName = 'ICMS_ForaEstadoEnt'
      Origin = 'ICMS_ForaEstadoEnt'
    end
    object ProdutosICMS_ForaEstadoSai: TFloatField
      FieldName = 'ICMS_ForaEstadoSai'
      Origin = 'ICMS_ForaEstadoSai'
    end
    object ProdutosICMS_DentroEstadoEnt: TFloatField
      FieldName = 'ICMS_DentroEstadoEnt'
      Origin = 'ICMS_DentroEstadoEnt'
    end
    object ProdutosICMS_DentroEstadoSai: TFloatField
      FieldName = 'ICMS_DentroEstadoSai'
      Origin = 'ICMS_DentroEstadoSai'
    end
    object ProdutosICMS_DentroEstadoSimples: TFloatField
      FieldName = 'ICMS_DentroEstadoSimples'
      Origin = 'ICMS_DentroEstadoSimples'
    end
    object ProdutosTabela_CAMEX: TBooleanField
      FieldName = 'Tabela_CAMEX'
      Origin = 'Tabela_CAMEX'
    end
    object ProdutosCSTICMS_Entrada: TStringField
      FieldName = 'CSTICMS_Entrada'
      Origin = 'CSTICMS_Entrada'
      Size = 3
    end
    object ProdutosCSTICMS_Saida: TStringField
      FieldName = 'CSTICMS_Saida'
      Origin = 'CSTICMS_Saida'
      Size = 3
    end
    object ProdutosBeneficio_FiscalEnt: TStringField
      FieldName = 'Beneficio_FiscalEnt'
      Origin = 'Beneficio_FiscalEnt'
      Size = 8
    end
    object ProdutosBeneficio_FiscalSai: TStringField
      FieldName = 'Beneficio_FiscalSai'
      Origin = 'Beneficio_FiscalSai'
      Size = 8
    end
    object ProdutosCodigo_Fabricante: TStringField
      FieldName = 'Codigo_Fabricante'
      Origin = 'Codigo_Fabricante'
    end
    object ProdutosUM: TStringField
      FieldName = 'UM'
      Origin = 'UM'
      Size = 3
    end
    object ProdutosPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
      Origin = 'Peso_Liquido'
    end
    object ProdutosPeso_Bruto: TFloatField
      FieldName = 'Peso_Bruto'
      Origin = 'Peso_Bruto'
    end
    object ProdutosAliquota_IBS: TFloatField
      FieldName = 'Aliquota_IBS'
      Origin = 'Aliquota_IBS'
    end
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 745
    Top = 190
  end
  object CSTCBS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTCBS'
      '')
    Left = 892
    Top = 242
  end
  object dsCSTCBS: TDataSource
    DataSet = CSTCBS
    Left = 892
    Top = 288
  end
  object CSTIBS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTIBS')
    Left = 889
    Top = 146
  end
  object dsCSTIBS: TDataSource
    DataSet = CSTIBS
    Left = 889
    Top = 190
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Descricao'
      '      ,ES'
      'from CFOP '
      'where Desativada <> 1')
    Left = 434
    Top = 146
    object CFOPCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      EditMask = '#.###;0'
      FixedChar = True
      Size = 4
    end
    object CFOPDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 80
    end
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 434
    Top = 190
  end
  object Processos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Tipo = '#39'IMP'#39
      '      ,Processo'
      'from ProcessosImp'
      'where isnull(DUIMP, '#39#39') <> '#39#39
      'select Tipo = '#39'EXP'#39
      '      ,Processo'
      'from ProcessosExp'
      'where isnull(DE, '#39#39') <> '#39#39)
    Left = 492
    Top = 146
  end
  object dsProcessos: TDataSource
    DataSet = Processos
    Left = 492
    Top = 190
  end
  object CSTIPI: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTIPI')
    Left = 492
    Top = 242
  end
  object dsCSTIPI: TDataSource
    DataSet = CSTIPI
    Left = 492
    Top = 288
  end
  object CSTPIS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTPIS')
    Left = 577
    Top = 242
  end
  object dsCSTPIS: TDataSource
    DataSet = CSTPIS
    Left = 577
    Top = 288
  end
  object CSTCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTCOFINS')
    Left = 813
    Top = 146
  end
  object dsCSTCOFINS: TDataSource
    DataSet = CSTCOFINS
    Left = 813
    Top = 190
  end
  object CSTICMSB: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 818
    Top = 242
  end
  object dsCSTICMSB: TDataSource
    DataSet = CSTICMSB
    Left = 818
    Top = 288
  end
  object ICMS: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from ICMS')
    Left = 668
    Top = 242
  end
  object dsICMS: TDataSource
    DataSet = ICMS
    Left = 668
    Top = 288
  end
  object CSTICMSA: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * FROM CSTICMS')
    Left = 747
    Top = 242
  end
  object dsCSTICMSA: TDataSource
    DataSet = CSTICMSA
    Left = 747
    Top = 288
  end
  object TabPISCOFINS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select *'
      'from TabelaPISCOFINS'
      'where Tipo = '#39'B'#39)
    Left = 668
    Top = 146
  end
  object dsTabPISCOFINS: TDataSource
    DataSet = TabPISCOFINS
    Left = 668
    Top = 190
  end
  object PedidosNF: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from pedidosNF')
    Left = 956
    Top = 146
  end
  object dsPedidosNF: TDataSource
    DataSet = PedidosNF
    Left = 956
    Top = 190
  end
  object OpFiscal: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscal')
    Left = 1027
    Top = 146
  end
  object dsOPFiscal: TDataSource
    DataSet = OpFiscal
    Left = 1027
    Top = 190
  end
  object tFormulas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select * from OperacaoFiscalFormulas')
    Left = 379
    Top = 147
  end
  object dstFormulas: TDataSource
    DataSet = tFormulas
    Left = 379
    Top = 189
  end
  object Campos: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 383
    Top = 244
  end
  object dsCampos: TDataSource
    DataSet = Campos
    Left = 385
    Top = 294
  end
  object Macro: TCalcExpress
    Formula = '0'
    Left = 744
    Top = 80
  end
  object tNCM: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 958
    Top = 242
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 958
    Top = 288
  end
  object tNCMICMS: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from NCM')
    Left = 1034
    Top = 242
  end
  object dstNCMICMS: TDataSource
    DataSet = tNCMICMS
    Left = 1034
    Top = 288
  end
  object Destinatarios: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select Codigo'
      '      ,Nome'
      
        '      ,CNPJ_CPF = iif(CNPJ <> '#39#39', replicate('#39'0'#39', 14-len(CNPJ))+C' +
        'NPJ, replicate('#39'0'#39', 14-len(CPF))+CPF)'
      'from Destinatarios')
    Left = 387
    Top = 354
  end
  object dsDestinatarios: TDataSource
    DataSet = Destinatarios
    Left = 387
    Top = 401
  end
  object ProdutosPauta: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from ProdutosPauta')
    Left = 751
    Top = 343
  end
  object dsProdutosPauta: TDataSource
    DataSet = ProdutosPauta
    Left = 751
    Top = 389
  end
  object dstImpostos: TDataSource
    DataSet = tImpostos
    Left = 387
    Top = 513
  end
  object tImpostos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 388
    Top = 464
    object tImpostosOrdem_Calculo: TSmallintField
      FieldName = 'Ordem_Calculo'
    end
    object tImpostosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tImpostosCampo: TStringField
      FieldName = 'Campo'
      Size = 60
    end
    object tImpostosAliquota: TFloatField
      FieldName = 'Aliquota'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosTotal: TCurrencyField
      FieldName = 'Total'
      DisplayFormat = ',##0.0000'
    end
    object tImpostosCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 797
    Top = 78
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 882
    Top = 78
  end
  object Empresas: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select CNPJ'
      '      ,Estado'
      '      ,Razao_Social'
      'from Empresas')
    Left = 489
    Top = 348
  end
  object dsEmpresas: TDataSource
    DataSet = Empresas
    Left = 492
    Top = 398
  end
end
