object fConfigSis: TfConfigSis
  Left = 0
  Top = 0
  Width = 1516
  Height = 1500
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1516
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
        '= '#39'Pasta'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = 5526569
    object Navega: TUniDBNavigator
      Left = 0
      Top = 0
      Width = 143
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      DataSource = dsConfig
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar: TUniSpeedButton
      Left = 140
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
      Enabled = False
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAdicionarClick
    end
    object bEditar: TUniSpeedButton
      Left = 181
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
      OnClick = bEditarClick
    end
    object bExcluir: TUniSpeedButton
      Left = 222
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluirClick
    end
    object bCancelar: TUniSpeedButton
      Left = 304
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelarClick
    end
    object bGravar: TUniSpeedButton
      Left = 263
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bSalvarClick
    end
    object bFechar: TUniSpeedButton
      Left = 345
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFecharClick
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1516
    Height = 1465
    Hint = ''
    ActivePage = TabSheet11
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
        's = '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Sistema'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 614
        object pFicha1: TUniPanel
          Left = 206
          Top = 10
          Width = 714
          Height = 604
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object GroupBox9: TUniGroupBox
            Left = 26
            Top = 23
            Width = 150
            Height = 124
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Caption = 'Backup'
            ParentColor = False
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cBackup_Automatico: TUniDBCheckBox
              Left = 13
              Top = 24
              Width = 119
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Backup_Automatico'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Backup autom'#225'tico.'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cBackup_Hora: TUniDBEdit
              Left = 13
              Top = 54
              Width = 116
              Height = 55
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              DataField = 'Backup_Hora'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              InputType = 'time'
              FieldLabel = 'Hora do Backup'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
          end
          object GroupBox3: TUniGroupBox
            Left = 26
            Top = 184
            Width = 660
            Height = 385
            Hint = ''
            ShowHint = True
            ParentShowHint = False
            Caption = 'Rede / Internet'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cSite: TUniDBEdit
              Left = 14
              Top = 24
              Width = 629
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Site'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 0
              InputType = 'url'
              FieldLabel = 'Site'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cEmail_Suporte: TUniDBEdit
              Left = 14
              Top = 80
              Width = 629
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Email_Suporte'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              InputType = 'email'
              FieldLabel = 'E-mail do Suporte'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cIP_Suporte: TUniDBEdit
              Left = 14
              Top = 248
              Width = 508
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'IP_Suporte'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'IP do Suporte'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cServidor_Proxy: TUniDBEdit
              Left = 14
              Top = 136
              Width = 629
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Servidor_Proxy'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Endere'#231'o do servidor Proxy '
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cUsuario_Proxy: TUniDBEdit
              Left = 14
              Top = 192
              Width = 340
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Usuario_Proxy'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Usu'#225'rio Proxy'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cSenha_FTP: TUniDBEdit
              Left = 405
              Top = 304
              Width = 238
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Senha_FTP'
              DataSource = dsConfig
              PasswordChar = #8226
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              FieldLabel = 'Senha'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cUsuario_FTP: TUniDBEdit
              Left = 14
              Top = 304
              Width = 340
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Usuario_FTP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              FieldLabel = 'Usu'#225'rio FTP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cSenha_Proxy: TUniDBEdit
              Left = 405
              Top = 192
              Width = 238
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Senha_Proxy'
              DataSource = dsConfig
              PasswordChar = #8226
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              FieldLabel = 'Senha'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cPassive_FTP: TUniDBCheckBox
              Left = 537
              Top = 281
              Width = 113
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Passive_FTP'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'FTP Passive mode'
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object bDLL: TUniButton
            Left = 614
            Top = 15
            Width = 86
            Height = 42
            Hint = ''
            ShowHint = True
            Caption = 'Vers'#227'o DLL'
            TabOrder = 3
            OnClick = bDLLClick
          end
        end
      end
    end
    object TabSheet4: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'Impress'#227'o'
      object UniScrollBox2: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 461
        object UniPanel2: TUniPanel
          Left = 206
          Top = 21
          Width = 349
          Height = 440
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object cExtenso_Maiusculo: TUniDBCheckBox
            Left = 23
            Top = 34
            Width = 290
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Extenso_Maiusculo'
            DataSource = dsConfig
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Impress'#227'o de valores por extenso em ma'#237'usculo.'
            TabOrder = 1
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cAbrir_PDFDANFE: TUniDBCheckBox
            Left = 23
            Top = 68
            Width = 290
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Abrir_PDFDANFE'
            DataSource = dsConfig
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Abrir PDF do DANFE ap'#243's envio de NF-e para SEFAZ.'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object GroupBox35: TUniGroupBox
            Left = 22
            Top = 227
            Width = 293
            Height = 80
            Hint = ''
            ShowHint = True
            Caption = 'NF-e'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cSeparar_NFE: TUniDBCheckBox
              Left = 9
              Top = 22
              Width = 192
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_NFE'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Pastas separadas (Entrada/Sa'#237'da)'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cSeparar_NFEMes: TUniDBCheckBox
              Left = 9
              Top = 46
              Width = 144
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_NFEMes'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Pastas separadas (M'#234's)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox36: TUniGroupBox
            Left = 22
            Top = 327
            Width = 293
            Height = 80
            Hint = ''
            ShowHint = True
            Caption = 'Boletos'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cSeparar_BoletoBanco: TUniDBCheckBox
              Left = 9
              Top = 22
              Width = 160
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_BoletoBanco'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Pastas separadas (Bancos)'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cSeparar_BoletoData: TUniDBCheckBox
              Left = 9
              Top = 46
              Width = 144
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_BoletoData'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Pastas separadas (Data)'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cNFE_DANFE_CodigoProduto: TUniDBRadioGroup
            Left = 22
            Top = 121
            Width = 293
            Height = 80
            Hint = ''
            ShowHint = True
            DataField = 'NFE_DANFE_CodigoProduto'
            DataSource = dsConfig
            Caption = 'C'#243'digo da Mercadoria na Impress'#227'o do DANFE'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'C'#243'digo Interno'
              'C'#243'digo do Fabricante')
            Values.Strings = (
              'I'
              'F')
          end
        end
      end
    end
    object TabSheet11: TUniTabSheet
      Hint = ''
      ImageIndex = 5
      Caption = 'Faturamento'
      object UniScrollBox3: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 674
        object UniPanel3: TUniPanel
          Left = 211
          Top = 16
          Width = 1015
          Height = 658
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object GroupBox2: TUniGroupBox
            Left = 20
            Top = 13
            Width = 974
            Height = 144
            Hint = ''
            ShowHint = True
            Caption = 'Rateios'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cRateio_Frete: TUniDBRadioGroup
              Left = 15
              Top = 25
              Width = 127
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Frete'
              DataSource = dsConfig
              Caption = 'Frete'
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Quantidade'
                'Valor FOB'
                'Peso')
              Values.Strings = (
                'Q'
                'V'
                'P')
            end
            object cRateio_Seguro: TUniDBRadioGroup
              Left = 147
              Top = 25
              Width = 127
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Seguro'
              DataSource = dsConfig
              Caption = 'Seguro'
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Quantidade'
                'Valor FOB'
                'Peso')
              Values.Strings = (
                'Q'
                'V'
                'P')
            end
            object cRateio_Despesas: TUniDBRadioGroup
              Left = 279
              Top = 25
              Width = 127
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Despesas'
              DataSource = dsConfig
              Caption = 'Despesas'
              TabOrder = 2
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Quantidade'
                'Valor FOB'
                'Peso')
              Values.Strings = (
                'Q'
                'V'
                'P')
              OnClick = cRateio_DespesasClick
            end
            object cRateio_COFINS: TUniDBRadioGroup
              Left = 675
              Top = 25
              Width = 126
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_COFINS'
              DataSource = dsConfig
              Caption = 'COFINS'
              TabOrder = 3
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Quantidade'
                'Valor FOB'
                'Peso')
              Values.Strings = (
                'Q'
                'V'
                'P')
            end
            object cRateio_PIS: TUniDBRadioGroup
              Left = 543
              Top = 25
              Width = 127
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_PIS'
              DataSource = dsConfig
              Caption = 'PIS'
              TabOrder = 4
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Quantidade'
                'Valor FOB'
                'Peso')
              Values.Strings = (
                'Q'
                'V'
                'P')
            end
            object cRateio_Valoracao: TUniDBRadioGroup
              Left = 806
              Top = 25
              Width = 147
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Valoracao'
              DataSource = dsConfig
              Caption = 'Acr'#233'scimo'
              TabOrder = 5
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Valor FOB'
                'Peso (Invoice)'
                'Peso (Rateado DI)')
              Values.Strings = (
                'V'
                'P'
                'D')
            end
            object cRateio_DespesasValor: TUniDBRadioGroup
              Left = 411
              Top = 25
              Width = 127
              Height = 100
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_DespesasValor'
              DataSource = dsConfig
              Caption = 'Ratear Despesas'
              TabOrder = 6
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Valor FOB'
                'Valor CIF + II')
              Values.Strings = (
                'FOB'
                'CIF')
            end
          end
          object cValor_Despesas: TUniDBRadioGroup
            Left = 20
            Top = 380
            Width = 514
            Height = 50
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Despesas'
            DataSource = dsConfig
            Caption = 'Valor das Despesas de Custo do processo'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Pelo Total L'#237'quido'
              'Pelo Total Bruto')
            Columns = 2
            Values.Strings = (
              '0'
              '1')
          end
          object cEmail_NFE: TUniDBEdit
            Left = 20
            Top = 573
            Width = 966
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Email_NFE'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Enviar todas as Notas/C.Corre'#231#227'o/Cancelamentos para o E-mail'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object GroupBox27: TUniGroupBox
            Left = 20
            Top = 172
            Width = 541
            Height = 190
            Hint = ''
            ShowHint = True
            Caption = 'Diversos'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cBotao_Duplicata: TUniDBCheckBox
              Left = 9
              Top = 18
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Botao_Duplicata'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Desabilitar bot'#227'o "Gerar Duplicatas" das telas de Pedido.'
              TabOrder = 0
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cVolumes_Entrada: TUniDBCheckBox
              Left = 9
              Top = 38
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Volumes_Entrada'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 
                'Pegar automaticamento a quantidade de volumes do processo para o' +
                's pedidos Entrada.'
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cVolumes_Saida: TUniDBCheckBox
              Left = 9
              Top = 58
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Volumes_Saida'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 
                'Pegar automaticamento a quantidade de volumes do processo para o' +
                's pedidos de Sa'#237'da.'
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cFaturamento_TravaContainer: TUniDBCheckBox
              Left = 9
              Top = 78
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_TravaContainer'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 
                'N'#227'o permitir envio de NF-e se o processo n'#227'o tiver containers ca' +
                'dastrados.'
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cFaturamento_AvisoDuplicata: TUniDBCheckBox
              Left = 9
              Top = 98
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_AvisoDuplicata'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 
                'Avisar quando "Tipo de Nota" gerar Pagar/Receber e "Duplicatas" ' +
                'n'#227'o forem geradas no pedido.'
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cCalculo_Reverso: TUniDBCheckBox
              Left = 9
              Top = 118
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Calculo_Reverso'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Habilitar c'#225'lculo reverso nos pedidos.'
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cFaturamento_BloquearAtraso: TUniDBCheckBox
              Left = 9
              Top = 138
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_BloquearAtraso'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 'Bloquear pedidos para clientes com pagamentos em atraso.'
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
            object cFaturamento_TravaDuplicata: TUniDBCheckBox
              Left = 9
              Top = 159
              Width = 520
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_TravaDuplicata'
              DataSource = dsConfig
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              Caption = 
                'S'#243' permitir parcelamento de duplicatas com valor exato do Pedido' +
                ' (Pedido de Nota Fiscal).'
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox30: TUniGroupBox
            Left = 20
            Top = 451
            Width = 514
            Height = 96
            Hint = ''
            ShowHint = True
            Caption = 'Estoque Min'#237'mo'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            DesignSize = (
              514
              96)
            object cEstoque_MinimoPerc: TUniDBFormattedNumberEdit
              Left = 11
              Top = 19
              Width = 78
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Estoque_MinimoPerc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 0
              SelectOnFocus = True
              FieldLabel = 'Percentual'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object bMinimo: TUniButton
              Left = 107
              Top = 40
              Width = 294
              Height = 36
              Hint = ''
              ShowHint = True
              Caption = 'Reprocessar Estoque Min'#237'mo de todos os produtos'
              Anchors = [akTop, akRight]
              TabOrder = 2
              OnClick = bMinimoClick
            end
          end
        end
      end
    end
    object TabSheet12: TUniTabSheet
      Hint = ''
      ImageIndex = 6
      Caption = 'Fiscais'
      object UniScrollBox5: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 1138
        object UniPanel5: TUniPanel
          Left = 205
          Top = 10
          Width = 775
          Height = 1128
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object GroupBox10: TUniGroupBox
            Left = 15
            Top = 234
            Width = 735
            Height = 482
            Hint = ''
            ShowHint = True
            Caption = 'Vencimentos dos  Impostos (Dia)'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cVencimento_ICMSFUNDAP: TUniDBNumberEdit
              Left = 10
              Top = 20
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_ICMSFUNDAP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 0
              SelectOnFocus = True
              FieldLabel = 'ICMS FUNDAP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_ICMSINVEST: TUniDBNumberEdit
              Left = 10
              Top = 76
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_ICMSINVEST'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'ICMS INVEST'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_ICMSComercio: TUniDBNumberEdit
              Left = 10
              Top = 132
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_ICMSComercio'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'ICMS Com'#233'rcio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_PIS: TUniDBNumberEdit
              Left = 10
              Top = 244
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_PIS'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 8
              SelectOnFocus = True
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_COFINS: TUniDBNumberEdit
              Left = 10
              Top = 300
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_COFINS'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 11
              SelectOnFocus = True
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_IPI: TUniDBNumberEdit
              Left = 10
              Top = 188
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_IPI'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              SelectOnFocus = True
              FieldLabel = 'IPI'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_IRPJ: TUniDBNumberEdit
              Left = 10
              Top = 356
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_IRPJ'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 14
              SelectOnFocus = True
              FieldLabel = 'IRPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_CSLL: TUniDBNumberEdit
              Left = 10
              Top = 412
              Width = 110
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_CSLL'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 17
              SelectOnFocus = True
              FieldLabel = 'CSLL'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cClassICMS: TUniDBLookupComboBox
              Left = 124
              Top = 132
              Width = 341
              Height = 55
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_ICMSOrgao'
              DataSource = dsConfig
              ParentFont = False
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              Style = csDropDown
            end
            object RxDBLookupCombo3: TUniDBLookupComboBox
              Left = 468
              Top = 132
              Width = 253
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_ICMSDoc'
              DataSource = dsConfig
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBLookupCombo4: TUniDBLookupComboBox
              Left = 124
              Top = 188
              Width = 341
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IPIOrgao'
              DataSource = dsConfig
              ParentFont = False
              AnyMatch = True
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object RxDBLookupCombo5: TUniDBLookupComboBox
              Left = 468
              Top = 188
              Width = 253
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IPIDoc'
              DataSource = dsConfig
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBLookupCombo6: TUniDBLookupComboBox
              Left = 124
              Top = 244
              Width = 341
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_PISOrgao'
              DataSource = dsConfig
              ParentFont = False
              AnyMatch = True
              TabOrder = 9
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object RxDBLookupCombo7: TUniDBLookupComboBox
              Left = 468
              Top = 244
              Width = 253
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_PISDoc'
              DataSource = dsConfig
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBLookupCombo8: TUniDBLookupComboBox
              Left = 124
              Top = 300
              Width = 341
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_COFINSOrgao'
              DataSource = dsConfig
              ParentFont = False
              AnyMatch = True
              TabOrder = 12
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object RxDBLookupCombo9: TUniDBLookupComboBox
              Left = 468
              Top = 300
              Width = 253
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_COFINSDoc'
              DataSource = dsConfig
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBLookupCombo10: TUniDBLookupComboBox
              Left = 124
              Top = 356
              Width = 341
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IRPJOrgao'
              DataSource = dsConfig
              ParentFont = False
              AnyMatch = True
              TabOrder = 15
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object RxDBLookupCombo11: TUniDBLookupComboBox
              Left = 468
              Top = 356
              Width = 253
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IRPJDoc'
              DataSource = dsConfig
              TabOrder = 16
              Color = clWindow
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBLookupCombo12: TUniDBLookupComboBox
              Left = 124
              Top = 412
              Width = 341
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_CSLLOrgao'
              DataSource = dsConfig
              ParentFont = False
              AnyMatch = True
              TabOrder = 18
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object RxDBLookupCombo13: TUniDBLookupComboBox
              Left = 468
              Top = 412
              Width = 253
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome'
              ListSource = dsTipoDoc
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Vencimento_CSLLDoc'
              DataSource = dsConfig
              TabOrder = 19
              Color = clWindow
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox29: TUniGroupBox
            Left = 289
            Top = 17
            Width = 464
            Height = 95
            Hint = ''
            ShowHint = True
            Caption = 'CIAP'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cValor_CIAP: TUniDBFormattedNumberEdit
              Left = 10
              Top = 54
              Width = 344
              Height = 30
              Hint = ''
              ShowHint = True
              DataField = 'Valor_CIAP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 0
              SelectOnFocus = True
              FieldLabel = 'Valor M'#237'nimo para imobilizado (CIAP)'
              FieldLabelWidth = 210
              FieldLabelAlign = laRight
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cParcelas_CIAP: TUniDBNumberEdit
              Left = 9
              Top = 23
              Width = 344
              Height = 30
              Hint = ''
              ShowHint = True
              DataField = 'Parcelas_CIAP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Parcelas (Meses)'
              FieldLabelWidth = 210
              FieldLabelAlign = laRight
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
          end
          object GroupBox33: TUniGroupBox
            Left = 289
            Top = 121
            Width = 464
            Height = 70
            Hint = ''
            ShowHint = True
            Caption = 'Diferencial de Al'#237'quota ICMS (DIFAL)'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cDIFAL_ICMSPart: TUniDBFormattedNumberEdit
              Left = 11
              Top = 24
              Width = 438
              Height = 30
              Hint = ''
              ShowHint = True
              DataField = 'DIFAL_ICMSPart'
              DataSource = dsConfig
              TabOrder = 1
              FieldLabel = 'Percentual participa'#231#227'o ano Corrente (Estado Destino)'
              FieldLabelWidth = 300
              FieldLabelAlign = laRight
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
          end
          object GroupBox7: TUniGroupBox
            Left = 15
            Top = 17
            Width = 260
            Height = 205
            Hint = ''
            ShowHint = True
            Caption = 'Conhecimento de Transporte (CTR)'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cPIS_CTR: TUniDBFormattedNumberEdit
              Left = 9
              Top = 26
              Width = 100
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'PIS_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 0
              SelectOnFocus = True
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cCOFINS_CTR: TUniDBFormattedNumberEdit
              Left = 115
              Top = 26
              Width = 100
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'COFINS_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object clRamo_CTR: TUniDBLookupComboBox
              Left = 8
              Top = 137
              Width = 240
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Ramo_CTR'
              DataSource = dsConfig
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Ramo de Atividade'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cItem_CTR: TUniDBNumberEdit
              Left = 9
              Top = 82
              Width = 100
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Item_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'C'#243'digo Produto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
          end
          object UniGroupBox1: TUniGroupBox
            Left = 15
            Top = 740
            Width = 496
            Height = 365
            Hint = ''
            ShowHint = True
            Caption = 'SPED (Fiscal/PISCOFINS)'
            TabOrder = 5
            object GroupBox11: TUniGroupBox
              Left = 15
              Top = 26
              Width = 460
              Height = 145
              Hint = ''
              ShowHint = True
              Caption = 'Inventario (SPED FISCAL)'
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              object cSPED_MesInventario: TUniDBLookupComboBox
                Left = 15
                Top = 73
                Width = 188
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Nome'
                ListSource = UniMainModule.dsMeses
                KeyField = 'Mes'
                ListFieldIndex = 0
                BorderStyle = ubsSolid
                DataField = 'SPED_MesInventario'
                DataSource = dsConfig
                TabOrder = 1
                Color = clWindow
                FieldLabel = 'Ramo de Atividade'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cConta_Inventario: TUniDBLookupComboBox
                Left = 15
                Top = 18
                Width = 427
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Conta;Nome_Contabil'
                ListSource = dsPlano
                KeyField = 'Conta'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Conta_Inventario'
                DataSource = dsConfig
                TabOrder = 2
                Color = clWindow
                FieldLabel = 'Conta'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
            end
            object GroupBox18: TUniGroupBox
              Left = 15
              Top = 197
              Width = 460
              Height = 150
              Hint = ''
              ShowHint = True
              Caption = 'Contas Cont'#225'beis para o PIS (SPED PIS/COFINS)'
              TabOrder = 2
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              object cPIS_ContaCodigo: TUniDBLookupComboBox
                Left = 15
                Top = 20
                Width = 430
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Conta;Nome_Contabil'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'PIS_ContaCodigo'
                DataSource = dsConfig
                ParentFont = False
                AnyMatch = True
                TabOrder = 1
                Color = clWindow
                FieldLabel = 'Conta'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cCOFINS_ContaCodigo: TUniDBLookupComboBox
                Left = 15
                Top = 75
                Width = 430
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Conta;Nome_Contabil'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'COFINS_ContaCodigo'
                DataSource = dsConfig
                ParentFont = False
                AnyMatch = True
                TabOrder = 2
                Color = clWindow
                FieldLabel = 'Conta'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
            end
          end
          object UniDBCheckBox1: TUniDBCheckBox
            Left = 290
            Top = 208
            Width = 464
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'XMLTerceiros_Codigo'
            DataSource = dsConfig
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 
              'Verificar c'#243'digo do produto na descri'#231#227'o na importa'#231#227'o do XML da' +
              ' NF-e terceiros.'
            TabOrder = 6
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laRight
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object TabSheet7: TUniTabSheet
      Hint = ''
      ImageIndex = 7
      Caption = 'Cont'#225'beis'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 493
        object UniPanel4: TUniPanel
          Left = 212
          Top = 23
          Width = 853
          Height = 470
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object GroupBox15: TUniGroupBox
            Left = 17
            Top = 155
            Width = 482
            Height = 86
            Hint = ''
            ShowHint = True
            Caption = 'Cria'#231#227'o de Contas autom'#225'tico no Plano de Contas'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object clContab_GrupoBanco: TUniDBLookupComboBox
              Left = 11
              Top = 20
              Width = 453
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_GrupoBanco'
              DataSource = dsConfig
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'Grupo de Bancos para cria'#231#227'o de Contas autom'#225'tico '
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cParametrizacao_Contabil: TUniDBCheckBox
            Left = 17
            Top = 18
            Width = 250
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Parametrizacao_Contabil'
            DataSource = dsConfig
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Obrigar parametriza'#231#227'o contab'#237'l nos cadastros'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object GroupBox34: TUniGroupBox
            Left = 16
            Top = 249
            Width = 814
            Height = 210
            Hint = ''
            ShowHint = True
            Caption = 'Lan'#231'amentos de Encerramento'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object clContab_HistoricoEncPrejuizo: TUniDBLookupComboBox
              Left = 409
              Top = 138
              Width = 391
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Contab_HistoricoEncPrejuizo'
              DataSource = dsConfig
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Hist'#243'rico (Preju'#237'zo Acumulado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clContab_ContaEncLucro: TUniDBLookupComboBox
              Left = 13
              Top = 83
              Width = 391
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_ContaEncLucro'
              DataSource = dsConfig
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Conta (Lucro Acumulado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clContab_ContaEncPrejuizo: TUniDBLookupComboBox
              Left = 13
              Top = 138
              Width = 391
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_ContaEncPrejuizo'
              DataSource = dsConfig
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Conta (Preju'#237'zo Acumulado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clContab_ContaResultado: TUniDBLookupComboBox
              Left = 13
              Top = 28
              Width = 391
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo;Nome_Contabil'
              ListSource = dsPlano
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_ContaResultado'
              DataSource = dsConfig
              TabOrder = 0
              Color = clWindow
              FieldLabel = 'Conta (Resultado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clContab_HistoricoResultado: TUniDBLookupComboBox
              Left = 409
              Top = 28
              Width = 391
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Contab_HistoricoResultado'
              DataSource = dsConfig
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Hist'#243'rico (Resultado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clContab_HistoricoEncLucro: TUniDBLookupComboBox
              Left = 409
              Top = 83
              Width = 391
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dsHistoricos
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Contab_HistoricoEncLucro'
              DataSource = dsConfig
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Hist'#243'rico (Lucro Acumulado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cContab_Numeracao: TUniDBCheckBox
            Left = 17
            Top = 40
            Width = 289
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Contab_Numeracao'
            DataSource = dsConfig
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 'Numera'#231#227'o sequ'#234'ncial das contas do Plano de Contas'
            TabOrder = 4
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniDBRadioGroup1: TUniDBRadioGroup
            Left = 16
            Top = 69
            Width = 483
            Height = 73
            Hint = ''
            ShowHint = True
            DataField = 'Contab_Metodo'
            DataSource = dsConfig
            Caption = 'M'#233'todo de Par'#226'metriza'#231#227'o Contabil'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'M'#233'todo 1 - Por Destinat'#225'rios(Clientes/Fornecedores'
              'M'#233'todo 2 - Por Modalidades de Importa'#231#227'o')
            Values.Strings = (
              '1'
              '2')
          end
        end
      end
    end
    object TabSheet13: TUniTabSheet
      Hint = ''
      ImageIndex = 7
      Caption = 'Financeiros'
      object UniScrollBox8: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 1218
        object PageControl2: TUniPageControl
          Left = 205
          Top = 10
          Width = 817
          Height = 1208
          Hint = ''
          ActivePage = TabSheet6
          Plain = True
          Anchors = [akTop]
          TabOrder = 0
          object TabSheet6: TUniTabSheet
            Hint = ''
            ImageIndex = 1
            Caption = 'Lan'#231'amentos'
            object UniPanel6: TUniPanel
              Left = 0
              Top = 0
              Width = 809
              Height = 1180
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object GroupBox12: TUniGroupBox
                Left = 139
                Top = 30
                Width = 549
                Height = 369
                Hint = ''
                ShowHint = True
                Caption = 
                  'Classifica'#231#245'es Financeiras para (Juros/Multas/Descontos) dos lan' +
                  #231'amentos do financeiro'
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clClassificacao_DescontosRC: TUniDBLookupComboBox
                  Left = 15
                  Top = 25
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_DescontosRC'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Descontos Recebidos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_DescontosPG: TUniDBLookupComboBox
                  Left = 15
                  Top = 80
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_DescontosPG'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Descontos Concedidos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_MultaRC: TUniDBLookupComboBox
                  Left = 15
                  Top = 135
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_MultaRC'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Multas Recebidas'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_JurosPG: TUniDBLookupComboBox
                  Left = 15
                  Top = 300
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_JurosPG'
                  DataSource = dsConfig
                  TabOrder = 5
                  Color = clWindow
                  FieldLabel = 'Juros Pagos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_JurosRC: TUniDBLookupComboBox
                  Left = 15
                  Top = 245
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_JurosRC'
                  DataSource = dsConfig
                  TabOrder = 4
                  Color = clWindow
                  FieldLabel = 'Juros Recebidos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_MultaPG: TUniDBLookupComboBox
                  Left = 15
                  Top = 190
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_MultaPG'
                  DataSource = dsConfig
                  TabOrder = 3
                  Color = clWindow
                  FieldLabel = 'Multas Pagas'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
              object GroupBox13: TUniGroupBox
                Left = 139
                Top = 413
                Width = 549
                Height = 150
                Hint = ''
                ShowHint = True
                Caption = 'Classifica'#231#245'es Financeiras de Recebimento para Transfer'#234'ncias'
                TabOrder = 2
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clClassificacao_TransfBanco: TUniDBLookupComboBox
                  Left = 15
                  Top = 24
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_TransfBanco'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Transfer'#234'ncia Banc'#225'ria'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_TransfProcesso: TUniDBLookupComboBox
                  Left = 15
                  Top = 79
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_TransfProcesso'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Transfer'#234'ncia Processo'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
              object GroupBox14: TUniGroupBox
                Left = 139
                Top = 579
                Width = 549
                Height = 208
                Hint = ''
                ShowHint = True
                Caption = 'Classifica'#231#245'es Financeiras para Fechamento de C'#226'mbio'
                TabOrder = 3
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clClassificacao_CambioVarAtiva: TUniDBLookupComboBox
                  Left = 15
                  Top = 24
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_CambioVarAtiva'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Varia'#231#227'o (Ativa)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDocumento_Cambio: TUniDBLookupComboBox
                  Left = 15
                  Top = 134
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Documento_Cambio'
                  DataSource = dsConfig
                  TabOrder = 3
                  Color = clWindow
                  FieldLabel = 'Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_CambioVarPassiva: TUniDBLookupComboBox
                  Left = 15
                  Top = 79
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_CambioVarPassiva'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Varia'#231#227'o (Passiva)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
              object GroupBox16: TUniGroupBox
                Left = 139
                Top = 800
                Width = 549
                Height = 153
                Hint = ''
                ShowHint = True
                Caption = 'Classifica'#231#227'o Financeira para o Lan'#231'amento do Contrato de C'#226'mbio'
                TabOrder = 4
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clContratoCambio_Classificacao: TUniDBLookupComboBox
                  Left = 15
                  Top = 24
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_ContratoCambio'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Lan'#231'amento Financeiro'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clContratoCambio_Documento: TUniDBLookupComboBox
                  Left = 15
                  Top = 80
                  Width = 519
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_ContratoCambioDoc'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
            end
          end
          object TabSheet5: TUniTabSheet
            Hint = ''
            Caption = 'Duplicatas'
            object UniPanel7: TUniPanel
              Left = 0
              Top = 0
              Width = 809
              Height = 1180
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object GroupBox4: TUniGroupBox
                Left = 20
                Top = 16
                Width = 769
                Height = 522
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                Caption = 'Gera'#231#227'o das Duplicatas dos Impostos'
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object cDuplicata01_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 56
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata01_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 2
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata02_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 113
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata02_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 6
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata03_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 169
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata03_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 10
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata04_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 225
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata04_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 14
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata05_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 281
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata05_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 18
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata06_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 337
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata06_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 22
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata07_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 393
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata07_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 26
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata08_Dias: TUniDBNumberEdit
                  Left = 554
                  Top = 449
                  Width = 76
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata08_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 30
                  SelectOnFocus = True
                  FieldLabel = 'Vencto.(Dias)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata01_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 92
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata01_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 3
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata02_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 150
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata02_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 7
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata03_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 204
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata03_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 11
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata04_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 261
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata04_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 15
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata05_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 317
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata05_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 19
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata06_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 374
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata06_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 23
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata07_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 430
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata07_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 27
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cDuplicata08_Sub: TUniDBCheckBox
                  Left = 635
                  Top = 485
                  Width = 110
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata08_Sub'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'M'#234's Subsequente'
                  TabOrder = 31
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata01: TUniDBLookupComboBox
                  Left = 15
                  Top = 56
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata01'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Duplicata 1'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata02: TUniDBLookupComboBox
                  Left = 15
                  Top = 113
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata02'
                  DataSource = dsConfig
                  TabOrder = 4
                  Color = clWindow
                  FieldLabel = 'Duplicata 2'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata03: TUniDBLookupComboBox
                  Left = 15
                  Top = 169
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata03'
                  DataSource = dsConfig
                  TabOrder = 8
                  Color = clWindow
                  FieldLabel = 'Duplicata 3'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata06: TUniDBLookupComboBox
                  Left = 15
                  Top = 337
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata06'
                  DataSource = dsConfig
                  TabOrder = 20
                  Color = clWindow
                  FieldLabel = 'Duplicata 6'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata05: TUniDBLookupComboBox
                  Left = 15
                  Top = 281
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata05'
                  DataSource = dsConfig
                  TabOrder = 16
                  Color = clWindow
                  FieldLabel = 'Duplicata 5'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata04: TUniDBLookupComboBox
                  Left = 15
                  Top = 225
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata04'
                  DataSource = dsConfig
                  TabOrder = 12
                  Color = clWindow
                  FieldLabel = 'Duplicata 4'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata08: TUniDBLookupComboBox
                  Left = 15
                  Top = 449
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata08'
                  DataSource = dsConfig
                  TabOrder = 28
                  Color = clWindow
                  FieldLabel = 'Duplicata 8'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata07: TUniDBLookupComboBox
                  Left = 15
                  Top = 393
                  Width = 180
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata07'
                  DataSource = dsConfig
                  TabOrder = 24
                  Color = clWindow
                  FieldLabel = 'Duplicata 7'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cGerar_DuplImpostos: TUniDBCheckBox
                  Left = 15
                  Top = 23
                  Width = 374
                  Height = 17
                  Hint = ''
                  ShowHint = True
                  DataField = 'Gerar_DuplImpostos'
                  DataSource = dsConfig
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  Caption = 'Gerar as duplicatas dos impostos na emiss'#227'o da nota fiscal.'
                  TabOrder = 33
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata01_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 56
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata01_Class'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata02_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 113
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata02_Class'
                  DataSource = dsConfig
                  TabOrder = 5
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata03_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 169
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata03_Class'
                  DataSource = dsConfig
                  TabOrder = 9
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata06_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 337
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata06_Class'
                  DataSource = dsConfig
                  TabOrder = 21
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata05_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 281
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata05_Class'
                  DataSource = dsConfig
                  TabOrder = 17
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata04_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 225
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata04_Class'
                  DataSource = dsConfig
                  TabOrder = 13
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata08_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 449
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata08_Class'
                  DataSource = dsConfig
                  TabOrder = 29
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clDuplicata07_Class: TUniDBLookupComboBox
                  Left = 198
                  Top = 393
                  Width = 354
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata07_Class'
                  DataSource = dsConfig
                  TabOrder = 25
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
              object cDia_Util: TUniDBRadioGroup
                Left = 21
                Top = 557
                Width = 199
                Height = 92
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'Dia_Util'
                DataSource = dsConfig
                Caption = 'Vencimentos em final de semana?'
                TabOrder = 2
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Antecipar'
                  'Avan'#231'ar'
                  'Nenhum')
                Values.Strings = (
                  '-'
                  '+'
                  'N')
              end
              object cDiferenca_Duplicata: TUniDBRadioGroup
                Left = 263
                Top = 557
                Width = 180
                Height = 92
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'Diferenca_Duplicata'
                DataSource = dsConfig
                Caption = 'Diferen'#231'a de arredondamento'
                TabOrder = 3
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Na Primeira Duplicata'
                  'Na '#250'ltima Duplicata')
                Values.Strings = (
                  '0'
                  '1')
              end
              object cSequencial_Duplicata: TUniDBRadioGroup
                Left = 489
                Top = 557
                Width = 180
                Height = 92
                Hint = ''
                ShowHint = True
                ParentShowHint = False
                DataField = 'Sequencial_Duplicata'
                DataSource = dsConfig
                Caption = 'Numero da Duplicata'
                TabOrder = 4
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Sequencial de n'#250'mero'
                  'Sequencial de letra')
                Values.Strings = (
                  '0'
                  '1')
              end
            end
          end
          object TabSheet9: TUniTabSheet
            Hint = ''
            ImageIndex = 3
            Caption = 'Diversos'
            object UniPanel8: TUniPanel
              Left = 0
              Top = 0
              Width = 809
              Height = 1180
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object cCalculo_Comissao: TUniDBRadioGroup
                Left = 85
                Top = 73
                Width = 636
                Height = 45
                Hint = ''
                ShowHint = True
                DataField = 'Calculo_Comissao'
                DataSource = dsConfig
                Caption = 'Calcular comiss'#227'o de representantes'
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Total dos Produtos'
                  'Total dos Produtos + IPI'
                  'Total da Nota Fiscal')
                Columns = 3
                Values.Strings = (
                  'PRODUTO'
                  'PRODUTO+IPI'
                  'TOTAL NOTA')
              end
              object cHora_Solicitacao: TUniDBEdit
                Left = 85
                Top = 25
                Width = 326
                Height = 25
                Hint = ''
                ShowHint = True
                DataField = 'Hora_Solicitacao'
                DataSource = dsConfig
                CheckChangeDelay = 0
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 2
                InputType = 'time'
                FieldLabel = 'Hora limite para solicita'#231#227'o de numer'#225'rios'
                FieldLabelWidth = 250
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object GroupBox20: TUniGroupBox
                Left = 87
                Top = 144
                Width = 633
                Height = 210
                Hint = ''
                ShowHint = True
                Caption = 'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es a Representantes)'
                TabOrder = 3
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clTipo_DocumentoPagamento: TUniDBLookupComboBox
                  Left = 11
                  Top = 139
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Tipo_DocumentoPagamento'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Tipo de Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clCentro_CustoPagamento: TUniDBLookupComboBox
                  Left = 11
                  Top = 83
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo; Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Centro_CustoPagamento'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Centro de Custo'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_Pagamento: TUniDBLookupComboBox
                  Left = 11
                  Top = 27
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_Pagamento'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o Financeira'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
              object GroupBox25: TUniGroupBox
                Left = 88
                Top = 815
                Width = 633
                Height = 314
                Hint = ''
                ShowHint = True
                Caption = 'Informa'#231#245'es default para empr'#233'stimos banc'#225'rios (Capital de Giro)'
                TabOrder = 4
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clEmprestimoBancario_CentroCusto: TUniDBLookupComboBox
                  Left = 11
                  Top = 183
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'EmprestimoBancario_CentroCusto'
                  DataSource = dsConfig
                  TabOrder = 3
                  Color = clWindow
                  FieldLabel = 'Centro de Custo'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clEmprestimoBancario_ClassificacaoR: TUniDBLookupComboBox
                  Left = 11
                  Top = 15
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'EmprestimoBancario_ClassificacaoR'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o Financeira (Recebimento)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clEmprestimoBancario_TipoDocumento: TUniDBLookupComboBox
                  Left = 11
                  Top = 239
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'EmprestimoBancario_TipoDocumento'
                  DataSource = dsConfig
                  TabOrder = 4
                  Color = clWindow
                  FieldLabel = 'Tipo de Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clEmprestimoBancario_ClassificacaoP: TUniDBLookupComboBox
                  Left = 11
                  Top = 127
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'EmprestimoBancario_ClassificacaoP'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o Financeira (Pagamento)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object cEmprestimoBancario_FormaRecebimento: TUniDBComboBox
                  Left = 11
                  Top = 71
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  DataField = 'EmprestimoBancario_FormaRecebimento'
                  DataSource = dsConfig
                  Items.Strings = (
                    'CHEQUE'
                    'CART'#195'O DE CR'#201'DITO'
                    'CART'#195'O DE D'#201'BITO'
                    'TRANSFER'#202'NCIA ON-LINE'
                    'DOC'
                    'BOLETO BANC'#193'RIO'
                    'D'#201'BITO EM CONTA'
                    'DINHEIRO')
                  TabOrder = 1
                  FieldLabel = 'Forma de Recebimento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  IconItems = <>
                end
              end
              object GroupBox31: TUniGroupBox
                Left = 87
                Top = 372
                Width = 633
                Height = 199
                Hint = ''
                ShowHint = True
                Caption = 
                  'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es a Atendentes de Call ' +
                  'Center)'
                TabOrder = 5
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clTipo_DocumentoPagamentoTelevendas: TUniDBLookupComboBox
                  Left = 11
                  Top = 127
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Tipo_DocumentoPagamentoTelevendas'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Tipo de Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clCentro_CustoPagamentoTelevendas: TUniDBLookupComboBox
                  Left = 11
                  Top = 71
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Centro_CustoPagamentoTelevendas'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Centro de Custo'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_PagamentoTelevendas: TUniDBLookupComboBox
                  Left = 11
                  Top = 15
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_PagamentoTelevendas'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o Financeira'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
              object GroupBox32: TUniGroupBox
                Left = 87
                Top = 592
                Width = 633
                Height = 202
                Hint = ''
                ShowHint = True
                Caption = 'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es - Outras)'
                TabOrder = 6
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                object clTipo_DocumentoPagamentoOutros: TUniDBLookupComboBox
                  Left = 11
                  Top = 127
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Tipo_DocumentoPagamentoOutros'
                  DataSource = dsConfig
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Tipo de Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clCentro_CustoPagamentoOutros: TUniDBLookupComboBox
                  Left = 11
                  Top = 71
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Centro_CustoPagamentoOutros'
                  DataSource = dsConfig
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Centro de Custo'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
                object clClassificacao_PagamentoOutros: TUniDBLookupComboBox
                  Left = 11
                  Top = 15
                  Width = 610
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome_Financeiro'
                  ListSource = dsPlano
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_PagamentoOutros'
                  DataSource = dsConfig
                  TabOrder = 0
                  Color = clWindow
                  FieldLabel = 'Classifica'#231#227'o Financeira'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                end
              end
            end
          end
          object TabSheet15: TUniTabSheet
            Hint = ''
            ImageIndex = 3
            Caption = 'Boleto Banc'#225'rio'
            object UniPanel9: TUniPanel
              Left = 0
              Top = 0
              Width = 809
              Height = 1180
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object cBoleto_Contato: TUniDBCheckBox
                Left = 34
                Top = 297
                Width = 300
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_Contato'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Imprimir dados de contato no boleto.'
                TabOrder = 1
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cBoleto_EspecieDOC: TUniDBComboBox
                Left = 32
                Top = 234
                Width = 744
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_EspecieDOC'
                DataSource = dsConfig
                Items.Strings = (
                  'Aluguel'
                  'Apolice de Seguro'
                  'Cheque'
                  'Contrato'
                  'Contribui'#231#227'o Confederativa'
                  'Cosseguros'
                  'Divida Ativa Estado'
                  'Divida Ativa Munic'#237'pio'
                  'Divida Ativa Uni'#227'o'
                  'Duplicata Mercantil'
                  'Duplicata Mercantial Indica'#231#227'o'
                  'Duplicata Rural'
                  'Duplicata Servi'#231'o'
                  'Duplicata Servi'#231'o Indica'#231#227'o'
                  'Fatura'
                  'Letra C'#226'mbio'
                  'Mensalidade Escolar'
                  'Nota Cr'#233'dito Comercial'
                  'Nota Cr'#233'dito Export'#231#227'o'
                  'Nota Cr'#233'dito Industrial'
                  'Nota Cr'#233'dito Rural'
                  'Nota D'#233'bito'
                  'Nota Promiss'#243'ria'
                  'Nota Promiss'#243'ria Rural'
                  'Nota Seguro'
                  'Outros'
                  'Parcela Cons'#243'rcio'
                  'Recibo'
                  'Triplicata Mercantil'
                  'Triplicata Servi'#231'o'
                  'Warrant')
                TabOrder = 2
                FieldLabel = 'Esp'#233'cie Documento'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                IconItems = <>
              end
              object cBoleto_InstrucaoCod: TUniDBEdit
                Left = 32
                Top = 118
                Width = 300
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_InstrucaoCod'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 3
                FieldLabel = 'Instru'#231#245'es 1 (C'#243'digo/Descri'#231#227'o)'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_InstrucaoCod2: TUniDBEdit
                Left = 32
                Top = 176
                Width = 300
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_InstrucaoCod2'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 4
                FieldLabel = 'Instru'#231#245'es 2 (C'#243'digo)'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_Instrucoes: TUniDBEdit
                Left = 32
                Top = 147
                Width = 740
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_Instrucoes'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 5
                FieldLabel = 'Instru'#231#245'es 1 (C'#243'digo/Descri'#231#227'o)'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_LocalPagamento: TUniDBEdit
                Left = 32
                Top = 31
                Width = 740
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_LocalPagamento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 6
                FieldLabel = 'Local de Pagamento'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_PercentualJuros: TUniDBFormattedNumberEdit
                Left = 32
                Top = 89
                Width = 300
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_PercentualJuros'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 7
                SelectOnFocus = True
                FieldLabel = 'Percentual de Juros por dia de atraso'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cBoleto_PercentualMulta: TUniDBFormattedNumberEdit
                Left = 32
                Top = 60
                Width = 300
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_PercentualMulta'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 8
                SelectOnFocus = True
                FieldLabel = 'Percentual de multa ap'#243's o vencimento'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cBoleto_ProtestoDias: TUniDBNumberEdit
                Left = 32
                Top = 205
                Width = 300
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_ProtestoDias'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 9
                SelectOnFocus = True
                FieldLabel = 'Protestar ap'#243's quantos dias'
                FieldLabelWidth = 220
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                BorderStyle = ubsSolid
              end
            end
          end
        end
      end
    end
    object TabSheet3: TUniTabSheet
      Hint = ''
      ImageIndex = 6
      Caption = 'Processos'
      object UniScrollBox7: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 822
        object PageControl3: TUniPageControl
          Left = 211
          Top = 10
          Width = 776
          Height = 812
          Hint = ''
          ActivePage = TabSheet17
          Plain = True
          Anchors = [akTop]
          TabOrder = 0
          object TabSheet19: TUniTabSheet
            Hint = ''
            Caption = 'Diversos'
            object UniPanel11: TUniPanel
              Left = 0
              Top = 0
              Width = 768
              Height = 784
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object cProcesso_Numero: TUniDBRadioGroup
                Left = 20
                Top = 23
                Width = 269
                Height = 150
                Hint = ''
                ShowHint = True
                DataField = 'Processo_Numero'
                DataSource = dsConfig
                Caption = 'Gera'#231#227'o do N'#250'mero do Processo/PO Autom'#225'tico'
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'M'#225'scara+N'#225'mero'
                  'M'#225'scara+N'#250'mero+Ano'
                  'M'#225'scara+Ano+N'#250'mero'
                  'N'#250'mero+Ano+M'#225'scara'
                  'Ano+N'#250'mero+M'#225'scara')
                Values.Strings = (
                  'MN'
                  'MNA'
                  'MAN'
                  'NAM'
                  'ANM')
              end
              object cBloquear_ProcessoFechado: TUniDBCheckBox
                Left = 21
                Top = 216
                Width = 348
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'Bloquear_ProcessoFechado'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Bloquear a movimenta'#231#227'o financeira para processos fechados.'
                TabOrder = 2
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cProcesso_ObrigarFatura: TUniDBCheckBox
                Left = 21
                Top = 239
                Width = 303
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'Processo_ObrigarFatura'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Obrigar campos da fatura no cadastro do processo.'
                TabOrder = 3
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cBloquear_ItemContrato: TUniDBCheckBox
                Left = 21
                Top = 262
                Width = 393
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'Bloquear_ItemContrato'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 
                  'N'#227'o bloquear item de contrato de c'#226'mbio com valor maior que o sa' +
                  'ldo.'
                TabOrder = 4
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cValor_DI: TUniDBFormattedNumberEdit
                Left = 22
                Top = 312
                Width = 185
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Valor_DI'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 5
                SelectOnFocus = True
                FieldLabel = 'Valor da DI'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
            end
          end
          object TabSheet17: TUniTabSheet
            Hint = ''
            ImageIndex = 1
            Caption = 'Importa'#231#227'o de DI'
            object UniPanel12: TUniPanel
              Left = 0
              Top = 0
              Width = 768
              Height = 784
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object Label1: TUniLabel
                Left = 22
                Top = 142
                Width = 616
                Height = 13
                Hint = ''
                ShowHint = True
                AutoSize = False
                Caption = 
                  'Informe um * neste campo para pegar a primeira palavra como o c'#243 +
                  'digo do fabricante.'
                ParentColor = False
                Color = 16744448
                TabOrder = 1
              end
              object clMoeda_Importacao: TUniDBLookupComboBox
                Left = 22
                Top = 22
                Width = 488
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Nome;Simbolo'
                ListSource = dsMoedas
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Moeda_Importacao'
                DataSource = dsConfig
                TabOrder = 2
                Color = clWindow
                FieldLabel = 'Moeda padr'#227'o p/convers'#227'o p/DI'#39's com mais de uma moeda'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object clRamo_Atividade: TUniDBLookupComboBox
                Left = 22
                Top = 77
                Width = 488
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                ListSource = dsRamos
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Ramo_Atividade'
                DataSource = dsConfig
                TabOrder = 3
                Color = clWindow
                FieldLabel = 'Ramo de atividade padr'#227'o para fornecedores do exterior'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cAdicao_PesoLiquido: TUniDBRadioGroup
                Left = 22
                Top = 375
                Width = 270
                Height = 98
                Hint = ''
                ShowHint = True
                DataField = 'Adicao_PesoLiquido'
                DataSource = dsConfig
                Caption = 'Peso Unit'#225'rio Produto'
                TabOrder = 4
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Ratear peso l'#237'quido da Adi'#231#227'o'
                  'Utilizar peso do cadastro de Produtos'
                  'Utilizar peso dos itens da Fatura')
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object cSISCOMEX_CodigoProduto: TUniDBCheckBox
                Left = 22
                Top = 512
                Width = 410
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_CodigoProduto'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 
                  'S'#243' importar produtos do SISCOMEX para descri'#231#245'es com o c'#243'digo do' +
                  ' sistema.'
                TabOrder = 5
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cSISCOMEX_MascaraReferencia: TUniDBEdit
                Left = 22
                Top = 162
                Width = 384
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_MascaraReferencia'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 6
                FieldLabel = 'M'#225'scara p/importa'#231#227'o c'#243'd.refer'#234'ncia na descri'#231#227'o do prod.'
                FieldLabelWidth = 300
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cProcesso_ImportarFechado: TUniDBCheckBox
                Left = 22
                Top = 533
                Width = 410
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'Processo_ImportarFechado'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Importar processos com notas fiscais j'#225' emitidas.'
                TabOrder = 7
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cAFRMM_Calcular: TUniDBCheckBox
                Left = 22
                Top = 553
                Width = 410
                Height = 17
                Hint = ''
                ShowHint = True
                DataField = 'AFRMM_Calcular'
                DataSource = dsConfig
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Calcular valor de AFRMM e gerar lan'#231'amento no financeiro.'
                TabOrder = 8
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                OnClick = cAFRMM_CalcularClick
              end
              object cAFRMM_Tarifa: TUniDBFormattedNumberEdit
                Left = 43
                Top = 628
                Width = 160
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'AFRMM_Tarifa'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 9
                SelectOnFocus = True
                FieldLabel = 'Tarifa'
                FieldLabelWidth = 80
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cAFRMM_Taxa: TUniDBFormattedNumberEdit
                Left = 43
                Top = 684
                Width = 160
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'AFRMM_Taxa'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 10
                SelectOnFocus = True
                FieldLabel = 'Taxa Utiliza'#231#227'o Mercante'
                FieldLabelWidth = 80
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cAFRMM_Percentual: TUniDBFormattedNumberEdit
                Left = 43
                Top = 572
                Width = 160
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'AFRMM_Percentual'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 11
                SelectOnFocus = True
                FieldLabel = 'Percentual p/C'#225'lculo'
                FieldLabelWidth = 80
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cSISCOMEX_MascaraPosicao: TUniDBRadioGroup
                Left = 22
                Top = 272
                Width = 267
                Height = 71
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_MascaraPosicao'
                DataSource = dsConfig
                Caption = 'Posi'#231#227'o do c'#243'digo de refer'#234'ncia na descri'#231#227'o'
                TabOrder = 12
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'No inicio da descri'#231#227'o'
                  'No final da descri'#231#227'o')
                Values.Strings = (
                  '1'
                  '2')
              end
              object cSISCOMEX_MascaraPO: TUniDBEdit
                Left = 22
                Top = 191
                Width = 384
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_MascaraPO'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 13
                FieldLabel = 'M'#225'scara p/importa'#231#227'o do n'#186' do PO na descri'#231#227'o do prod.'
                FieldLabelWidth = 300
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cSISCOMEX_MascaraITEM: TUniDBEdit
                Left = 22
                Top = 220
                Width = 384
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_MascaraITEM'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 14
                FieldLabel = 'M'#225'scara p/importa'#231#227'o do n'#186' do ITEM na descri'#231#227'o do prod.'
                FieldLabelWidth = 300
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cSISCOMEX_MascaraPOFech: TUniDBEdit
                Left = 409
                Top = 191
                Width = 100
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_MascaraPOFech'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 15
                FieldLabelWidth = 400
                FieldLabelAlign = laRight
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cSISCOMEX_MascaraITEMFech: TUniDBEdit
                Left = 409
                Top = 220
                Width = 100
                Height = 28
                Hint = ''
                ShowHint = True
                DataField = 'SISCOMEX_MascaraITEMFech'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 16
                FieldLabelWidth = 400
                FieldLabelAlign = laRight
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
            end
          end
          object TabSheet18: TUniTabSheet
            Hint = ''
            Caption = 'Fechamento de Processos'
            object UniPanel13: TUniPanel
              Left = 0
              Top = 0
              Width = 768
              Height = 784
              Hint = ''
              ShowHint = True
              ParentShowHint = False
              Align = alClient
              TabOrder = 0
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
                  ' '#39'Ficha'#39';'#13#10'}')
              BorderStyle = ubsNone
              TitleAlign = taCenter
              Title = 'DADOS GERAIS'
              Caption = ''
              Color = clTeal
              object clProcesso_FechamentoCSLL: TUniDBLookupComboBox
                Left = 19
                Top = 25
                Width = 449
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Nome_Financeiro'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Processo_FechamentoCSLL'
                DataSource = dsConfig
                TabOrder = 1
                Color = clWindow
                FieldLabel = 'CSLL'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object clProcesso_FechamentoIRPJ: TUniDBLookupComboBox
                Left = 19
                Top = 80
                Width = 449
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Nome_Financeiro'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Processo_FechamentoIRPJ'
                DataSource = dsConfig
                TabOrder = 2
                Color = clWindow
                FieldLabel = 'IRPJ'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cProcesso_FechamentoICMSPagar: TUniDBFormattedNumberEdit
                Left = 19
                Top = 301
                Width = 150
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Processo_FechamentoICMSPagar'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 3
                SelectOnFocus = True
                FieldLabel = 'Percentual ICMS (Pagar)'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cProcesso_FechamentoFDE: TUniDBFormattedNumberEdit
                Left = 19
                Top = 357
                Width = 150
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Processo_FechamentoFDE'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 4
                SelectOnFocus = True
                FieldLabel = 'Percentual FDE'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cProcesso_FechamentoAssAduaneira: TUniDBFormattedNumberEdit
                Left = 19
                Top = 413
                Width = 150
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Processo_FechamentoAssAduaneira'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 5
                SelectOnFocus = True
                FieldLabel = 'Assessoria Aduaneira'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object clProcesso_FechamentoClassPgtoCliente: TUniDBLookupComboBox
                Left = 19
                Top = 135
                Width = 449
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Nome_Financeiro'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Processo_FechamentoClassPgtoCliente'
                DataSource = dsConfig
                TabOrder = 6
                Color = clWindow
                FieldLabel = 'Classifica'#231#227'o Pgto. Cliente'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object clProcesso_FechamentoClassCorrecao: TUniDBLookupComboBox
                Left = 19
                Top = 190
                Width = 449
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Nome_Financeiro'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Processo_FechamentoClassCorrecao'
                DataSource = dsConfig
                TabOrder = 7
                Color = clWindow
                FieldLabel = 'Classifica'#231#227'o Corr.Financ.'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object cProcesso_FechamentoCorrecao: TUniDBFormattedNumberEdit
                Left = 19
                Top = 469
                Width = 151
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Processo_FechamentoCorrecao'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 8
                SelectOnFocus = True
                FieldLabel = 'Percentual Corre'#231#227'o Dia'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cProcesso_FechamentoObservacao: TUniDBRadioGroup
                Left = 484
                Top = 26
                Width = 264
                Height = 72
                Hint = ''
                ShowHint = True
                DataField = 'Processo_FechamentoObservacao'
                DataSource = dsConfig
                Caption = 'Observa'#231#227'o das Despesas'
                TabOrder = 9
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                    's = '#39'Grupo'#39';'#13#10'}')
                Items.Strings = (
                  'Copiar a descri'#231#227'o da Classifica'#231#227'o'
                  'Observa'#231#227'o do Financeiro')
                Values.Strings = (
                  '0'
                  '1')
              end
              object cProcesso_FechamentoObsTexto: TUniDBMemo
                Left = 19
                Top = 525
                Width = 665
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Processo_FechamentoObsTexto'
                DataSource = dsConfig
                BorderStyle = ubsSolid
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 10
                FieldLabel = 'Observa'#231#227'o para o Fechamento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
              object clProcesso_FechamentoDRE: TUniDBLookupComboBox
                Left = 19
                Top = 245
                Width = 449
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Nome_Financeiro'
                ListSource = dsPlano
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Processo_FechamentoDRE'
                DataSource = dsConfig
                TabOrder = 11
                Color = clWindow
                FieldLabel = 'C'#243'digo da DRE'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
              end
            end
          end
        end
      end
    end
    object TabSheet8: TUniTabSheet
      Hint = ''
      ImageIndex = 8
      Caption = 'Checagens'
      object UniScrollBox9: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 436
        object UniPanel14: TUniPanel
          Left = 206
          Top = 21
          Width = 736
          Height = 415
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object GroupBox22: TUniGroupBox
            Left = 23
            Top = 231
            Width = 690
            Height = 159
            Hint = ''
            ShowHint = True
            Caption = 'Entrega de Arquivos Fiscais'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cVencimento_FISCALDias: TUniDBNumberEdit
              Left = 456
              Top = 25
              Width = 216
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_FISCALDias'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'Avisar quantos dias antes?'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_PISCOFINSDias: TUniDBNumberEdit
              Left = 456
              Top = 54
              Width = 216
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_PISCOFINSDias'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Avisar quantos dias antes?'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_CONTABILDias: TUniDBNumberEdit
              Left = 456
              Top = 83
              Width = 216
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_CONTABILDias'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'Avisar quantos dias antes?'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_SINTEGRADias: TUniDBNumberEdit
              Left = 456
              Top = 112
              Width = 216
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_SINTEGRADias'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              SelectOnFocus = True
              FieldLabel = 'Avisar quantos dias antes?'
              FieldLabelWidth = 160
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_FISCAL: TUniDBNumberEdit
              Left = 20
              Top = 25
              Width = 259
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_FISCAL'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 7
              SelectOnFocus = True
              FieldLabel = 'Dia Vencimento SPED FISCAL'
              FieldLabelWidth = 200
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_PISCOFINS: TUniDBNumberEdit
              Left = 20
              Top = 54
              Width = 259
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_PISCOFINS'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              SelectOnFocus = True
              FieldLabel = 'Dia Vencimento SPED PIS/COFINS'
              FieldLabelWidth = 200
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_CONTABIL: TUniDBNumberEdit
              Left = 20
              Top = 83
              Width = 259
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_CONTABIL'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'Dia Vencimento SPED CONTABIL'
              FieldLabelWidth = 200
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_SINTEGRA: TUniDBNumberEdit
              Left = 20
              Top = 112
              Width = 259
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_SINTEGRA'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 6
              SelectOnFocus = True
              FieldLabel = 'Dia Vencimento SINTEGRA'
              FieldLabelWidth = 200
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_CONTABILMes: TUniDBNumberEdit
              Left = 300
              Top = 83
              Width = 145
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Vencimento_CONTABILMes'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 8
              SelectOnFocus = True
              FieldLabel = 'M'#234's Espec'#237'fico'
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
          end
          object UniGroupBox2: TUniGroupBox
            Left = 23
            Top = 24
            Width = 690
            Height = 187
            Hint = ''
            ShowHint = True
            Caption = 'Avisos de Vencimentos'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cAviso_VencimentoContrato: TUniDBNumberEdit
              Left = 23
              Top = 24
              Width = 320
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Aviso_VencimentoContrato'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'Contrato do cliente quantos dias antes?'
              FieldLabelWidth = 260
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cAviso_VencimentoRetorno: TUniDBNumberEdit
              Left = 23
              Top = 111
              Width = 320
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Aviso_VencimentoRetorno'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Retorno de Notas Fiscals Quantos dias Antes?'
              FieldLabelWidth = 260
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cAviso_VencimentoRadar: TUniDBNumberEdit
              Left = 23
              Top = 53
              Width = 320
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Aviso_VencimentoRadar'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'Radar do cliente quantos dias antes?'
              FieldLabelWidth = 260
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cAviso_VencimentoVinculacao: TUniDBNumberEdit
              Left = 23
              Top = 82
              Width = 320
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Aviso_VencimentoVinculacao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              SelectOnFocus = True
              FieldLabel = 'Vincula'#231#227'o do cliente quantos dias antes?'
              FieldLabelWidth = 260
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cAviso_MovimentoMinimo: TUniDBNumberEdit
              Left = 23
              Top = 140
              Width = 320
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Aviso_MovimentoMinimo'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 5
              SelectOnFocus = True
              FieldLabel = 'Clientes sem movimenta'#231#227'o  quantos dias?'
              FieldLabelWidth = 260
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cAviso_MovimentoMaximo: TUniDBNumberEdit
              Left = 349
              Top = 139
              Width = 122
              Height = 28
              Hint = ''
              ShowHint = True
              DataField = 'Aviso_MovimentoMaximo'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 6
              SelectOnFocus = True
              FieldLabel = 'Max'#237'mo'
              FieldLabelWidth = 50
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
          end
        end
      end
    end
    object TabSheet14: TUniTabSheet
      Hint = ''
      ImageIndex = 10
      Caption = 'Televendas'
      object UniScrollBox4: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1508
        Height = 1437
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1506
          1435)
        ScrollHeight = 510
        object UniPanel10: TUniPanel
          Left = 211
          Top = 16
          Width = 712
          Height = 494
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Anchors = [akTop]
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
              ' '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Title = 'DADOS GERAIS'
          Caption = ''
          Color = clTeal
          object GroupBox28: TUniGroupBox
            Left = 28
            Top = 90
            Width = 656
            Height = 379
            Hint = ''
            ShowHint = True
            Caption = 'Dados de Faturamento para pedidos de Televendas'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object clTelevendas_Transportador: TUniDBLookupComboBox
              Left = 23
              Top = 28
              Width = 609
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Nome;CNPJ'
              ListSource = dstTransp
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Televendas_Transportador'
              DataSource = dsConfig
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Transportador'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTipoNota: TUniDBLookupComboBox
              Left = 23
              Top = 138
              Width = 609
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao; Codigo'
              ListSource = dsTipoNota
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Televendas_TipoNota'
              DataSource = dsConfig
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Tipo Nota'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cModalidadeFrete: TUniDBComboBox
              Left = 23
              Top = 83
              Width = 609
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Televendas_ModalidadeFrete'
              DataSource = dsConfig
              Style = csDropDownList
              Items.Strings = (
                'Por conta do emitente'
                'Por conta do destinat'#225'rio/remetente'
                'Por conta de terceiros'
                'Sem cobran'#231'a de frete')
              TabOrder = 2
              FieldLabel = 'Modalidade de Frete'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              IconItems = <>
            end
            object cTelevendas_NaturezaFora: TUniDBLookupComboBox
              Left = 23
              Top = 248
              Width = 609
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsCFOP
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Televendas_NaturezaFora'
              DataSource = dsConfig
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Natureza Opera'#231#227'o (Fora do Estado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cModalidade: TUniDBLookupComboBox
              Left = 23
              Top = 303
              Width = 609
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsModalPg
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Televendas_ModalidadePgto'
              DataSource = dsConfig
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Modalidade Pgto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cTelevendas_NaturezaDentro: TUniDBLookupComboBox
              Left = 23
              Top = 193
              Width = 609
              Height = 55
              Hint = ''
              ShowHint = True
              ListOnlyMode = lmFollowSource
              ListField = 'Codigo;Descricao'
              ListSource = dsCFOP
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Televendas_NaturezaDentro'
              DataSource = dsConfig
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Natureza Opera'#231#227'o (Dentro do Estado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object cTelevendas_EstoqueTerceiros: TUniDBCheckBox
            Left = 32
            Top = 34
            Width = 481
            Height = 17
            Hint = ''
            ShowHint = True
            DataField = 'Televendas_EstoqueTerceiros'
            DataSource = dsConfig
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Caption = 
              'Computar o estoque em terceiros como estoque dispon'#237'vel para os ' +
              'pedidos do Televendas.'
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object Plano: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM PlanoContas order by Codigo'
      ''
      ''
      '')
    Left = 144
    Top = 165
  end
  object Transp: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo, Nome, CNPJ'
      'FROM Fornecedores '
      '')
    Left = 56
    Top = 173
  end
  object dstTransp: TDataSource
    DataSet = Transp
    Left = 56
    Top = 221
  end
  object CFOP: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo, Descricao_NF'
      'FROM Natureza')
    Left = 56
    Top = 269
  end
  object dsCFOP: TDataSource
    DataSet = CFOP
    Left = 56
    Top = 317
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evLiveWindowParanoic]
    FetchOptions.RowsetSize = 250
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Config')
    Left = 56
    Top = 70
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 56
    Top = 118
  end
  object dsPlano: TDataSource
    DataSet = Plano
    Left = 144
    Top = 213
  end
  object Orgao: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM Destinatarios where Orgao_Publico =1'
      ''
      ''
      '')
    Left = 144
    Top = 261
  end
  object dsOrgao: TDataSource
    DataSet = Orgao
    Left = 144
    Top = 309
  end
  object TipoDoc: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM TipoDocumentos'
      ''
      '')
    Left = 144
    Top = 357
  end
  object dsTipoDoc: TDataSource
    DataSet = TipoDoc
    Left = 144
    Top = 405
  end
  object Historicos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Descricao'
      'FROM  Historicos'
      'ORDER BY Descricao')
    Left = 144
    Top = 73
  end
  object dsHistoricos: TDataSource
    DataSet = Historicos
    Left = 144
    Top = 120
  end
  object Moedas: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM Moedas'
      ''
      '')
    Left = 56
    Top = 365
  end
  object dsMoedas: TDataSource
    DataSet = Moedas
    Left = 56
    Top = 421
  end
  object Ramos: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM RamoAtividade'
      ''
      '')
    Left = 144
    Top = 453
  end
  object dsRamos: TDataSource
    DataSet = Ramos
    Left = 144
    Top = 501
  end
  object TipoNota: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM TipoNota'
      ''
      '')
    Left = 56
    Top = 469
  end
  object dsTipoNota: TDataSource
    DataSet = TipoNota
    Left = 56
    Top = 517
  end
  object ModalPg: TFDQuery
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'SELECT * FROM ModalidadesPagamento'
      ''
      '')
    Left = 144
    Top = 549
  end
  object dsModalPg: TDataSource
    DataSet = ModalPg
    Left = 144
    Top = 597
  end
  object Alerta: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 432
  end
end
