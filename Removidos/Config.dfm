object fConfig: TfConfig
  Left = 0
  Top = 0
  Width = 1219
  Height = 1200
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  AutoScroll = True
  object Pasta: TUniPageControl
        ClientEvents.UniEvents.Strings = (
             'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' + 
             's = '#39'PastaInterna'#39';'#13#10'}')
    Left = 0
    Top = 35
    Width = 1219
    Height = 1165
    Hint = ''
    BodyRTL = False
    ActivePage = UniTabSheet10
    Plain = True
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 844
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Ambiente'
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 705
        object pFicha1: TUniPanel
          Left = 131
          Top = 13
          Width = 641
          Height = 692
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
          object cEmpresa: TUniDBEdit
            Left = 25
            Top = 17
            Width = 200
            Height = 55
            Hint = ''
            Enabled = False
            ShowHint = True
            DataField = 'Empresa'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Empresa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cBackup_Automatico: TUniDBCheckBox
            Left = 336
            Top = 106
            Width = 184
            Height = 15
            Hint = ''
            ShowHint = True
            DataField = 'Backup_Automatico'
            DataSource = dsConfig
            Caption = 'Executar Backup Autom'#225'tico'
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cBackup_Hora: TUniDBEdit
            Left = 159
            Top = 72
            Width = 144
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Backup_Hora'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = #218'ltimo Backup (Hora)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cBackup_Ultimo: TUniDBDateTimePicker
            Left = 25
            Top = 72
            Width = 128
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Backup_Ultimo'
            DataSource = dsConfig
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = #218'ltimo Backup (Data)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object UniGroupBox3: TUniGroupBox
            Left = 25
            Top = 141
            Width = 591
            Height = 145
            Hint = ''
            ShowHint = True
            Caption = 'Servidor FTP Cybersoft'
            TabOrder = 5
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cIP_Suporte: TUniDBEdit
              Left = 19
              Top = 19
              Width = 426
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'IP_Suporte'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Endere'#231'o IP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cPassive_FTP: TUniDBCheckBox
              Left = 451
              Top = 50
              Width = 110
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Passive_FTP'
              DataSource = dsConfig
              Caption = 'Passive mode'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cUsuario_FTP: TUniDBEdit
              Left = 19
              Top = 75
              Width = 273
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Usuario_FTP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Us'#250'ario'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cSenha_FTP: TUniDBEdit
              Left = 298
              Top = 75
              Width = 273
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Senha_FTP'
              DataSource = dsConfig
              PasswordChar = #186
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 4
              FieldLabel = 'Senha'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
          end
          object UniGroupBox1: TUniGroupBox
            Left = 25
            Top = 298
            Width = 591
            Height = 151
            Hint = ''
            ShowHint = True
            Caption = 'E-mail/Site'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cSite: TUniDBEdit
              Left = 19
              Top = 23
              Width = 551
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Site'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              InputType = 'url'
              FieldLabel = 'Site'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cEmail: TUniDBEdit
              Left = 19
              Top = 84
              Width = 551
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Email_Suporte'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              InputType = 'email'
              FieldLabel = 'E-mail do Suporte'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              FieldLabelFont.Color = clBlue
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
          end
          object UniGroupBox2: TUniGroupBox
            Left = 25
            Top = 461
            Width = 591
            Height = 203
            Hint = ''
            ShowHint = True
            Caption = 'Proxy'
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            object cServidor_Proxy: TUniDBEdit
              Left = 19
              Top = 19
              Width = 551
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Servidor_Proxy'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              FieldLabel = 'Servidor_Proxy'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cSenha_Proxy: TUniDBEdit
              Left = 19
              Top = 131
              Width = 551
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Senha_Proxy'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              FieldLabel = 'Senha_Proxy'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
            object cUsuario_Proxy: TUniDBEdit
              Left = 19
              Top = 75
              Width = 551
              Height = 55
              Hint = ''
              ShowHint = True
              DataField = 'Usuario_Proxy'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              FieldLabel = 'Usuario_Proxy'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              SelectOnFocus = True
              BorderStyle = ubsSolid
            end
          end
        end
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Caption = 'Pastas'
      object UniScrollBox5: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 444
        object UniPanel1: TUniPanel
          Left = 167
          Top = 13
          Width = 636
          Height = 431
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
          object cPasta_BACKUP: TUniDBEdit
            Left = 20
            Top = 188
            Width = 594
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Pasta_BACKUP'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Pasta de BACKUP'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cPasta_NFE: TUniDBEdit
            Left = 20
            Top = 133
            Width = 594
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Pasta_NFE'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Pasta para NF-E'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cPasta_BackupCybersoft: TUniDBEdit
            Left = 20
            Top = 298
            Width = 594
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Pasta_BackupCybersoft'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Pasta Backup servidor Cybersoft'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cPasta_BACKUPCopia: TUniDBEdit
            Left = 20
            Top = 243
            Width = 594
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Pasta_BACKUPCopia'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Pasta BACKUP (Copia)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cPasta_Boleto: TUniDBEdit
            Left = 20
            Top = 353
            Width = 594
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Pasta_Boleto'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Pasta para os Boletos'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object UniGroupBox4: TUniGroupBox
            Left = 20
            Top = 12
            Width = 269
            Height = 94
            Hint = ''
            ShowHint = True
            Caption = 'Nota Fiscal'
            TabOrder = 6
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cSeparar_NFE: TUniDBCheckBox
              Left = 17
              Top = 33
              Width = 232
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_NFE'
              DataSource = dsConfig
              Caption = 'Pastas separadas (Entrada/Sa'#237'da).'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cSeparar_NFEMes: TUniDBCheckBox
              Left = 17
              Top = 56
              Width = 184
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_NFEMes'
              DataSource = dsConfig
              Caption = 'Pastas separadas (M'#234's).'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object UniGroupBox5: TUniGroupBox
            Left = 309
            Top = 12
            Width = 212
            Height = 94
            Hint = ''
            ShowHint = True
            Caption = 'Boletos'
            TabOrder = 7
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBCheckBox1: TUniDBCheckBox
              Left = 16
              Top = 56
              Width = 175
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_BoletoData'
              DataSource = dsConfig
              Caption = 'Pastas separadas (Data).'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object UniDBCheckBox2: TUniDBCheckBox
              Left = 16
              Top = 33
              Width = 177
              Height = 17
              Hint = ''
              ShowHint = True
              DataField = 'Separar_BoletoBanco'
              DataSource = dsConfig
              Caption = 'Pastas separadas (Banco).'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Caption = 'Faturamento'
      object UniScrollBox4: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 720
        object pFicha4: TUniPanel
          Left = 113
          Top = 30
          Width = 936
          Height = 690
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
          object cEmail_NFE: TUniDBEdit
            Left = 19
            Top = 604
            Width = 894
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Email_NFE'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Enviar todas as Notas/C.Corre'#231#227'o/Cancelamentos para o E-mail'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object UniGroupBox12: TUniGroupBox
            Left = 18
            Top = 22
            Width = 895
            Height = 132
            Hint = ''
            ShowHint = True
            Caption = 'Rateios'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBRadioGroup2: TUniDBRadioGroup
              Left = 9
              Top = 21
              Width = 115
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Frete'
              DataSource = dsConfig
              Caption = 'Frete'
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
            object UniDBRadioGroup3: TUniDBRadioGroup
              Left = 129
              Top = 21
              Width = 115
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Seguro'
              DataSource = dsConfig
              Caption = 'Seguro'
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
            end
            object UniDBRadioGroup4: TUniDBRadioGroup
              Left = 249
              Top = 21
              Width = 115
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Despesas'
              DataSource = dsConfig
              Caption = 'Despesas'
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
            object UniDBRadioGroup5: TUniDBRadioGroup
              Left = 369
              Top = 21
              Width = 146
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_DespesasValor'
              DataSource = dsConfig
              Caption = 'Valor Rateio Despesa'
              TabOrder = 4
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
            object UniDBRadioGroup6: TUniDBRadioGroup
              Left = 521
              Top = 21
              Width = 116
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_PIS'
              DataSource = dsConfig
              Caption = 'PIS'
              TabOrder = 5
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
            object UniDBRadioGroup7: TUniDBRadioGroup
              Left = 643
              Top = 21
              Width = 115
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_COFINS'
              DataSource = dsConfig
              Caption = 'COFINS'
              TabOrder = 6
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
            object UniDBRadioGroup8: TUniDBRadioGroup
              Left = 764
              Top = 22
              Width = 115
              Height = 96
              Hint = ''
              ShowHint = True
              DataField = 'Rateio_Valoracao'
              DataSource = dsConfig
              Caption = 'Acr'#233'scimo'
              TabOrder = 7
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
          end
          object UniDBRadioGroup9: TUniDBRadioGroup
            Left = 19
            Top = 160
            Width = 254
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Despesas'
            DataSource = dsConfig
            Caption = 'Valor das Despesas de Custo do processo'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                's = '#39'Grupo'#39';'#13#10'}')
            Items.Strings = (
              'Pelo Total L'#237'quido'
              'Pelo Total Bruto')
            Values.Strings = (
              '0'
              '1')
          end
          object UniGroupBox13: TUniGroupBox
            Left = 18
            Top = 317
            Width = 633
            Height = 268
            Hint = ''
            ShowHint = True
            Caption = 'Op'#231#245'es'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cBotao_Duplicata: TUniDBCheckBox
              Left = 12
              Top = 21
              Width = 348
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Botao_Duplicata'
              DataSource = dsConfig
              Caption = 'Desabilitar bot'#227'o "Gerar Duplicatas" das telas de Pedido.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 1
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cVolumes_Entrada: TUniDBCheckBox
              Left = 12
              Top = 45
              Width = 532
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Volumes_Entrada'
              DataSource = dsConfig
              Caption = 
                'Pegar automaticamento a quantidade de volumes do processo para o' +
                's pedidos Entrada.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cVolumes_Saida: TUniDBCheckBox
              Left = 12
              Top = 69
              Width = 540
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Volumes_Saida'
              DataSource = dsConfig
              Caption = 
                'Pegar automaticamento a quantidade de volumes do processo para o' +
                's pedidos de Sa'#237'da.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 3
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFaturamento_TravaContainer: TUniDBCheckBox
              Left = 12
              Top = 93
              Width = 460
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_TravaContainer'
              DataSource = dsConfig
              Caption = 
                'N'#227'o permitir envio de NF-e se o processo n'#227'o tiver containers ca' +
                'dastrados.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 4
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFaturamento_AvisoDuplicata: TUniDBCheckBox
              Left = 12
              Top = 117
              Width = 581
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_AvisoDuplicata'
              DataSource = dsConfig
              Caption = 
                'Avisar quando "Tipo de Nota" gerar Pagar/Receber e "Duplicatas" ' +
                'n'#227'o forem geradas no pedido.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 5
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cCalculo_Reverso: TUniDBCheckBox
              Left = 12
              Top = 141
              Width = 245
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Calculo_Reverso'
              DataSource = dsConfig
              Caption = 'Habilitar c'#225'lculo reverso nos pedidos.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 6
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFaturamento_BloquearAtraso: TUniDBCheckBox
              Left = 12
              Top = 165
              Width = 368
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_BloquearAtraso'
              DataSource = dsConfig
              Caption = 'Bloquear pedidos para clientes com pagamentos em atraso.'
              ParentFont = False
              Font.Height = -13
              TabOrder = 7
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cFaturamento_TravaDuplicata: TUniDBCheckBox
              Left = 12
              Top = 189
              Width = 549
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Faturamento_TravaDuplicata'
              DataSource = dsConfig
              Caption = 
                'S'#243' permitir parcelamento de duplicatas com valor exato do Pedido' +
                ' (Pedido de Nota Fiscal).'
              ParentFont = False
              Font.Height = -13
              TabOrder = 8
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cExtenso_Maiusculo: TUniDBCheckBox
              Left = 12
              Top = 214
              Width = 139
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Extenso_Maiusculo'
              DataSource = dsConfig
              Caption = 'Extenso_Maiusculo'
              ParentFont = False
              Font.Height = -13
              TabOrder = 9
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
            object cAbrir_PDFDANFE: TUniDBCheckBox
              Left = 12
              Top = 239
              Width = 120
              Height = 20
              Hint = ''
              ShowHint = True
              DataField = 'Abrir_PDFDANFE'
              DataSource = dsConfig
              Caption = 'Abrir_PDFDANFE'
              ParentFont = False
              Font.Height = -13
              TabOrder = 10
              ParentColor = False
              Color = clBtnFace
              FieldLabelWidth = 120
              FieldLabelSeparator = ' '
            end
          end
          object UniDBRadioGroup10: TUniDBRadioGroup
            Left = 303
            Top = 160
            Width = 229
            Height = 70
            Hint = ''
            ShowHint = True
            DataField = 'NFE_DANFE_CodigoProduto'
            DataSource = dsConfig
            Caption = 'C'#243'digo da Mercadoria no DNFE'
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
          object cEstoque_MinimoPerc: TUniDBFormattedNumberEdit
            Left = 18
            Top = 248
            Width = 173
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Estoque_MinimoPerc'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'Percentual p/Estoque Min'#237'mo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
        end
      end
    end
    object UniTabSheet6: TUniTabSheet
      Hint = ''
      Caption = 'Fiscais'
      object UniScrollBox6: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 983
        ExplicitHeight = 938
        DesignSize = (
          1209
          1135)
        ScrollHeight = 764
        object pFicha6: TUniPanel
          Left = 129
          Top = 16
          Width = 888
          Height = 748
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
          object UniGroupBox6: TUniGroupBox
            Left = 23
            Top = 22
            Width = 354
            Height = 257
            Hint = ''
            ShowHint = True
            Caption = 'Conhecimento de Transporte (CTR)'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cPIS_CTR: TUniDBFormattedNumberEdit
              Left = 14
              Top = 21
              Width = 150
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'PIS_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cItem_CTR: TUniDBNumberEdit
              Left = 14
              Top = 133
              Width = 150
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Item_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'Item_CTR'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cCOFINS_CTR: TUniDBFormattedNumberEdit
              Left = 14
              Top = 77
              Width = 150
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'COFINS_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cRamo_CTR: TUniDBLookupComboBox
              Left = 14
              Top = 185
              Width = 323
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo;Descricao'
              ListSource = dsRamo
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Ramo_CTR'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Ramo Atividade'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object UniGroupBox7: TUniGroupBox
            Left = 413
            Top = 22
            Width = 185
            Height = 149
            Hint = ''
            ShowHint = True
            Caption = 'CIAP'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cValor_CIAP: TUniDBFormattedNumberEdit
              Left = 16
              Top = 76
              Width = 150
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Valor_CIAP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'Valor M'#237'nimo Imobil.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
            object cParcelas_CIAP: TUniDBNumberEdit
              Left = 16
              Top = 20
              Width = 150
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Parcelas_CIAP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'Parcelas (Meses)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
          end
          object UniGroupBox8: TUniGroupBox
            Left = 23
            Top = 293
            Width = 845
            Height = 427
            Hint = ''
            ShowHint = True
            Caption = 'Vencimentos dos Impostos (Dia)'
            TabOrder = 3
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cVencimento_ICMSFUNDAP: TUniDBNumberEdit
              Left = 14
              Top = 23
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_ICMSFUNDAP'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'ICMS (FUNDAP)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_ICMSINVEST: TUniDBNumberEdit
              Left = 140
              Top = 23
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_ICMSINVEST'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 2
              SelectOnFocus = True
              FieldLabel = 'ICMS (INVEST)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_ICMSComercio: TUniDBNumberEdit
              Left = 14
              Top = 79
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_ICMSComercio'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 3
              SelectOnFocus = True
              FieldLabel = 'ICMS (Com'#233'rcio)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_IPI: TUniDBNumberEdit
              Left = 14
              Top = 359
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_IPI'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 18
              SelectOnFocus = True
              FieldLabel = 'IPI'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_PIS: TUniDBNumberEdit
              Left = 14
              Top = 247
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_PIS'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 12
              SelectOnFocus = True
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_COFINS: TUniDBNumberEdit
              Left = 14
              Top = 303
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_COFINS'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 15
              SelectOnFocus = True
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_IRPJ: TUniDBNumberEdit
              Left = 14
              Top = 191
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_IRPJ'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 9
              SelectOnFocus = True
              FieldLabel = 'IRPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_CSLL: TUniDBNumberEdit
              Left = 14
              Top = 135
              Width = 105
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'Vencimento_CSLL'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 6
              SelectOnFocus = True
              FieldLabel = 'CSLL'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              BorderStyle = ubsSolid
            end
            object cVencimento_ICMSOrgao: TUniDBLookupComboBox
              Left = 125
              Top = 79
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_ICMSOrgao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_ICMSDoc: TUniDBLookupComboBox
              Left = 482
              Top = 79
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_ICMSDoc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_CSLLOrgao: TUniDBLookupComboBox
              Left = 125
              Top = 135
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_CSLLOrgao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 7
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_CSLLDoc: TUniDBLookupComboBox
              Left = 482
              Top = 135
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_CSLLDoc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 8
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_IRPJOrgao: TUniDBLookupComboBox
              Left = 125
              Top = 191
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IRPJOrgao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 10
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_PISOrgao: TUniDBLookupComboBox
              Left = 125
              Top = 247
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_PISOrgao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 13
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_COFINSOrgao: TUniDBLookupComboBox
              Left = 125
              Top = 303
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_COFINSOrgao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 16
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_IPIOrgao: TUniDBLookupComboBox
              Left = 125
              Top = 359
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Nome'
              ListSource = dsOrgao
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IPIOrgao'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 19
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_IRPJDoc: TUniDBLookupComboBox
              Left = 481
              Top = 191
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IRPJDoc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 11
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_PISDoc: TUniDBLookupComboBox
              Left = 481
              Top = 247
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_PISDoc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 14
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_COFINSDoc: TUniDBLookupComboBox
              Left = 481
              Top = 303
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_COFINSDoc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 17
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cVencimento_IPIDoc: TUniDBLookupComboBox
              Left = 481
              Top = 359
              Width = 350
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Descricao'
              ListSource = dsDoc
              KeyField = 'Codigo'
              ListFieldIndex = 0
              BorderStyle = ubsSolid
              DataField = 'Vencimento_IPIDoc'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 20
              Color = clWindow
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object UniGroupBox9: TUniGroupBox
            Left = 637
            Top = 22
            Width = 194
            Height = 101
            Hint = ''
            ShowHint = True
            Caption = 'Dif.Al'#237'quota ICMS (DIFAL)'
            TabOrder = 4
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cDIFAL_ICMSPart: TUniDBFormattedNumberEdit
              Left = 14
              Top = 29
              Width = 167
              Height = 55
              Hint = ''
              ShowHint = True
              InputRTL = False
              DataField = 'DIFAL_ICMSPart'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              TabOrder = 1
              SelectOnFocus = True
              FieldLabel = 'Particip,ano Corrente'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              DecimalSeparator = ','
              ThousandSeparator = '.'
              BorderStyle = ubsSolid
            end
          end
        end
      end
    end
    object UniTabSheet7: TUniTabSheet
      Hint = ''
      Caption = 'SPED'
      object UniScrollBox7: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitTop = 3
        ExplicitWidth = 1280
        ExplicitHeight = 938
        DesignSize = (
          1209
          1135)
        ScrollHeight = 641
        object pFicha7: TUniPanel
          Left = 133
          Top = 3
          Width = 565
          Height = 638
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
          object UniGroupBox10: TUniGroupBox
            Left = 21
            Top = 183
            Width = 523
            Height = 426
            Hint = ''
            ShowHint = True
            Caption = 'SPED Fiscal'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBRadioGroup1: TUniDBRadioGroup
              Left = 17
              Top = 95
              Width = 139
              Height = 314
              Hint = ''
              ShowHint = True
              DataField = 'SPED_MesInventario'
              DataSource = dsConfig
              Caption = 'M'#234's Entrega'
              TabOrder = 1
              ClientEvents.UniEvents.Strings = (
                
                  'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
                  's = '#39'Grupo'#39';'#13#10'}')
              Items.Strings = (
                'Janeiro'
                'Fevereiro'
                'Mar'#231'o'
                'Abril'
                'Maio'
                'Junho'
                'Julho'
                'Agosto'
                'Setembro'
                'Outubro'
                'Novembro'
                'Dezembro')
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12')
            end
            object UniDBLookupComboBox3: TUniDBLookupComboBox
              Left = 15
              Top = 25
              Width = 490
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome'
              ListSource = dsContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Conta_Inventario'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object UniGroupBox11: TUniGroupBox
            Left = 21
            Top = 13
            Width = 523
            Height = 153
            Hint = ''
            ShowHint = True
            Caption = 'SPED PIS/COFINS'
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object UniDBLookupComboBox1: TUniDBLookupComboBox
              Left = 15
              Top = 27
              Width = 490
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome'
              ListSource = dsContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'PIS_ContaCodigo'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object UniDBLookupComboBox2: TUniDBLookupComboBox
              Left = 15
              Top = 82
              Width = 490
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Nome'
              ListSource = dsContas
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'COFINS_ContaCodigo'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
        end
      end
    end
    object UniTabSheet8: TUniTabSheet
      Hint = ''
      Caption = 'Cont'#225'beis'
      object UniScrollBox8: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 983
        ExplicitHeight = 938
        DesignSize = (
          1209
          1135)
        ScrollHeight = 595
        object pFicha8: TUniPanel
          Left = 168
          Top = 25
          Width = 602
          Height = 570
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
          object UniGroupBox14: TUniGroupBox
            Left = 20
            Top = 65
            Width = 560
            Height = 457
            Hint = ''
            ShowHint = True
            Caption = 'Lan'#231'amentos de Encerramento'
            TabOrder = 1
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Grupo'#39';'#13#10'}')
            object cContab_ContaEncLucro: TUniDBLookupComboBox
              Left = 18
              Top = 178
              Width = 523
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo; Nome'
              ListSource = dsContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_ContaEncLucro'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 3
              Color = clWindow
              FieldLabel = 'Conta de Lucro Acumulado'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cContab_ContaEncPrejuizo: TUniDBLookupComboBox
              Left = 18
              Top = 328
              Width = 523
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo; Nome'
              ListSource = dsContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_ContaEncPrejuizo'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 4
              Color = clWindow
              FieldLabel = 'Conta de Preju'#237'zo Acumulado)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cContab_ContaResultado: TUniDBLookupComboBox
              Left = 18
              Top = 26
              Width = 523
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Conta;Codigo; Nome'
              ListSource = dsContas
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_ContaResultado'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 1
              Color = clWindow
              FieldLabel = 'Conta de Resultado'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cContab_HistoricoResultado: TUniDBLookupComboBox
              Left = 18
              Top = 82
              Width = 523
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dsHistorico
              KeyField = 'Codigo'
              ListFieldIndex = 2
              BorderStyle = ubsSolid
              DataField = 'Contab_HistoricoResultado'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 2
              Color = clWindow
              FieldLabel = 'Conta de Resultado (Hist'#243'rico)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cContab_HistoricoEncLucro: TUniDBLookupComboBox
              Left = 18
              Top = 233
              Width = 523
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dsHistorico
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Contab_HistoricoEncLucro'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 5
              Color = clWindow
              FieldLabel = 'Conta de Lucro Acumulado (Hist'#243'rico)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
            object cContab_HistoricoEncPrejuizo: TUniDBLookupComboBox
              Left = 18
              Top = 379
              Width = 523
              Height = 55
              Hint = ''
              ShowHint = True
              ListField = 'Codigo; Descricao'
              ListSource = dsHistorico
              KeyField = 'Codigo'
              ListFieldIndex = 1
              BorderStyle = ubsSolid
              DataField = 'Contab_HistoricoEncPrejuizo'
              DataSource = dsConfig
              ParentFont = False
              Font.Height = -13
              Font.Name = 'DejaVu Sans'
              Font.Style = [fsBold]
              AnyMatch = True
              TabOrder = 6
              Color = clWindow
              FieldLabel = 'Conta de Preju'#237'zo Acumulado) (Hist'#243'rica)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              Style = csDropDown
            end
          end
          object cParametrizacao_Contabil: TUniDBCheckBox
            Left = 20
            Top = 25
            Width = 298
            Height = 20
            Hint = ''
            ShowHint = True
            DataField = 'Parametrizacao_Contabil'
            DataSource = dsConfig
            Caption = 'Obrigar parametriza'#231#227'o contab'#237'l nos cadastros'
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object UniTabSheet10: TUniTabSheet
      Hint = ''
      Caption = 'Financeiro'
      object UniScrollBox10: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 1081
        ScrollWidth = 627
        object pAbaFin: TUniPageControl
          Left = 144
          Top = 16
          Width = 961
          Height = 961
          Hint = ''
          ActivePage = UniTabSheet3
          Plain = True
          Anchors = [akTop]
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Pasta'#39';'#13#10'}')
          TabOrder = 0
          object UniTabSheet2: TUniTabSheet
            Hint = ''
            Caption = 'Lan'#231'amentos Financeiros'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 256
            ExplicitHeight = 128
            object pFicha10: TUniPanel
              Left = 0
              Top = 0
              Width = 953
              Height = 933
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
              object UniGroupBox15: TUniGroupBox
                Left = 19
                Top = 21
                Width = 533
                Height = 373
                Hint = ''
                ShowHint = True
                Caption = 
                  'Classifica'#231#245'es Financeiras para (Juros/Multas/Descontos) dos lan' +
                  #231'amentos do financeiro'
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                object cClassificacao_JurosRC: TUniDBLookupComboBox
                  Left = 14
                  Top = 82
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_JurosRC'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Juros Recebidos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_JurosPG: TUniDBLookupComboBox
                  Left = 14
                  Top = 27
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_JurosPG'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Juros Pagos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_MultaPG: TUniDBLookupComboBox
                  Left = 14
                  Top = 137
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_MultaPG'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 3
                  Color = clWindow
                  FieldLabel = 'Multas Pagas'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_MultaRC: TUniDBLookupComboBox
                  Left = 14
                  Top = 192
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_MultaRC'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 4
                  Color = clWindow
                  FieldLabel = 'Multas Recebidas'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_DescontosRC: TUniDBLookupComboBox
                  Left = 14
                  Top = 302
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_DescontosRC'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 5
                  Color = clWindow
                  FieldLabel = 'Descontos Recebidos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_DescontosPG: TUniDBLookupComboBox
                  Left = 14
                  Top = 247
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_DescontosPG'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 6
                  Color = clWindow
                  FieldLabel = 'Descontos Concedidos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
              end
              object UniGroupBox16: TUniGroupBox
                Left = 19
                Top = 585
                Width = 533
                Height = 322
                Hint = ''
                ShowHint = True
                Caption = 'Classifica'#231#227'o Financeira para o Lan'#231'amento do Contrato de C'#226'mbio'
                TabOrder = 2
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                object cClassificacao_CambioVarPassiva: TUniDBLookupComboBox
                  Left = 14
                  Top = 77
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_CambioVarPassiva'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Varia'#231#227'o (Passiva)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cContratoCambio_Documento: TUniDBLookupComboBox
                  Left = 14
                  Top = 256
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  ListSource = dsDoc
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_ContratoCambioDoc'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_CambioVarAtiva: TUniDBLookupComboBox
                  Left = 14
                  Top = 22
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_CambioVarAtiva'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 3
                  Color = clWindow
                  FieldLabel = 'Varia'#231#227'o (Ativa)'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDocumento_Cambio: TUniDBLookupComboBox
                  Left = 14
                  Top = 130
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  ListSource = dsDoc
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Documento_Cambio'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 4
                  Color = clWindow
                  FieldLabel = 'Documento'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cContratoCambio_Classificacao: TUniDBLookupComboBox
                  Left = 14
                  Top = 201
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_ContratoCambio'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 5
                  Color = clWindow
                  FieldLabel = 'Contrato de C'#226'mbio'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
              end
              object UniGroupBox17: TUniGroupBox
                Left = 19
                Top = 416
                Width = 533
                Height = 150
                Hint = ''
                ShowHint = True
                Caption = 'Classifica'#231#245'es Financeiras de Recebimento para Transfer'#234'ncias'
                TabOrder = 3
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                object cClassificacao_TransfProcesso: TUniDBLookupComboBox
                  Left = 14
                  Top = 81
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_TransfProcesso'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Transfer'#234'ncias de Processos'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cClassificacao_TransfBanco: TUniDBLookupComboBox
                  Left = 14
                  Top = 26
                  Width = 500
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Nome'
                  ListSource = dsPlanoFin
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Classificacao_TransfBanco'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Transfer'#234'ncias Banc'#225'rias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
              end
            end
          end
          object UniTabSheet3: TUniTabSheet
            Hint = ''
            Caption = 'Duplicatas'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 256
            ExplicitHeight = 128
            object pFicha11: TUniPanel
              Left = 0
              Top = 0
              Width = 953
              Height = 933
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
              object UniGroupBox18: TUniGroupBox
                Left = 19
                Top = 150
                Width = 901
                Height = 524
                Hint = ''
                ShowHint = True
                Caption = 'Gera'#231#227'o das Duplicatas dos Impostos'
                TabOrder = 1
                ClientEvents.UniEvents.Strings = (
                  
                    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                    '= '#39'Grupo'#39';'#13#10'}')
                object cDuplicata01: TUniDBLookupComboBox
                  Left = 22
                  Top = 68
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata01'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 1
                  Color = clWindow
                  FieldLabel = 'Duplicata01'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata02: TUniDBLookupComboBox
                  Left = 22
                  Top = 123
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata02'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Duplicata02'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata03: TUniDBLookupComboBox
                  Left = 22
                  Top = 178
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata03'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 3
                  Color = clWindow
                  FieldLabel = 'Duplicata03'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata04: TUniDBLookupComboBox
                  Left = 22
                  Top = 233
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata04'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 4
                  Color = clWindow
                  FieldLabel = 'Duplicata04'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata05: TUniDBLookupComboBox
                  Left = 22
                  Top = 288
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata05'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 5
                  Color = clWindow
                  FieldLabel = 'Duplicata05'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata06: TUniDBLookupComboBox
                  Left = 22
                  Top = 336
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata06'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 6
                  Color = clWindow
                  FieldLabel = 'Duplicata06'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata07: TUniDBLookupComboBox
                  Left = 22
                  Top = 391
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata07'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 7
                  Color = clWindow
                  FieldLabel = 'Duplicata07'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata08: TUniDBLookupComboBox
                  Left = 22
                  Top = 446
                  Width = 250
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata08'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 8
                  Color = clWindow
                  FieldLabel = 'Duplicata08'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata01_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 68
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata01_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 9
                  Color = clWindow
                  FieldLabel = 'Duplicata01_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata02_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 123
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata02_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 10
                  Color = clWindow
                  FieldLabel = 'Duplicata02_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata03_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 178
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata03_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 11
                  Color = clWindow
                  FieldLabel = 'Duplicata03_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata04_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 233
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata04_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 12
                  Color = clWindow
                  FieldLabel = 'Duplicata04_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata05_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 288
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata05_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 13
                  Color = clWindow
                  FieldLabel = 'Duplicata05_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata06_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 336
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata06_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 14
                  Color = clWindow
                  FieldLabel = 'Duplicata06_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata07_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 391
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata07_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 15
                  Color = clWindow
                  FieldLabel = 'Duplicata07_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata08_Class: TUniDBLookupComboBox
                  Left = 276
                  Top = 446
                  Width = 372
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  ListField = 'Codigo;Descricao'
                  KeyField = 'Codigo'
                  ListFieldIndex = 1
                  BorderStyle = ubsSolid
                  DataField = 'Duplicata08_Class'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  AnyMatch = True
                  TabOrder = 16
                  Color = clWindow
                  FieldLabel = 'Duplicata08_Class'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  Style = csDropDown
                end
                object cDuplicata01_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 68
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata01_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 17
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata01_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata02_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 123
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata02_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 18
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata02_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata03_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 178
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata03_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 19
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata03_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata04_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 233
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata04_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 20
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata04_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata05_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 288
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata05_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 21
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata05_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata06_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 336
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata06_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 22
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata06_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata07_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 391
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata07_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 23
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata07_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata08_Dias: TUniDBNumberEdit
                  Left = 652
                  Top = 446
                  Width = 100
                  Height = 55
                  Hint = ''
                  ShowHint = True
                  InputRTL = False
                  DataField = 'Duplicata08_Dias'
                  DataSource = dsConfig
                  ParentFont = False
                  Font.Height = -13
                  Font.Name = 'DejaVu Sans'
                  Font.Style = [fsBold]
                  TabOrder = 24
                  SelectOnFocus = True
                  FieldLabel = 'Duplicata08_Dias'
                  FieldLabelWidth = 120
                  FieldLabelAlign = laTop
                  FieldLabelSeparator = ' '
                  DecimalSeparator = ','
                  BorderStyle = ubsSolid
                end
                object cDuplicata01_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 100
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata01_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata01_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 25
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata02_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 155
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata02_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata02_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 26
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata03_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 210
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata03_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata03_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 27
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata04_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 265
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata04_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata04_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 28
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata05_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 322
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata05_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata05_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 29
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata06_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 375
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata06_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata06_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 30
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata07_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 430
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata07_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata07_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 31
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cDuplicata08_Sub: TUniDBCheckBox
                  Left = 758
                  Top = 477
                  Width = 120
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Duplicata08_Sub'
                  DataSource = dsConfig
                  Caption = 'Duplicata08_Sub'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 32
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
                object cGerar_DuplImpostos: TUniDBCheckBox
                  Left = 16
                  Top = 37
                  Width = 250
                  Height = 20
                  Hint = ''
                  ShowHint = True
                  DataField = 'Gerar_DuplImpostos'
                  DataSource = dsConfig
                  Caption = 'Gerar_DuplImpostos'
                  ParentFont = False
                  Font.Height = -13
                  TabOrder = 33
                  ParentColor = False
                  Color = clBtnFace
                  FieldLabelWidth = 120
                  FieldLabelSeparator = ' '
                end
              end
              object UniDBRadioGroup11: TUniDBRadioGroup
                Left = 19
                Top = 20
                Width = 207
                Height = 93
                Hint = ''
                ShowHint = True
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
              object UniDBRadioGroup12: TUniDBRadioGroup
                Left = 257
                Top = 21
                Width = 204
                Height = 70
                Hint = ''
                ShowHint = True
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
              object UniDBRadioGroup13: TUniDBRadioGroup
                Left = 504
                Top = 21
                Width = 203
                Height = 70
                Hint = ''
                ShowHint = True
                DataField = 'Sequencial_Duplicata'
                DataSource = dsConfig
                Caption = 'Vencimentos em final de semana?'
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
          object UniTabSheet9: TUniTabSheet
            Hint = ''
            Caption = 'Boletos'
            object pFicha13: TUniPanel
              Left = 0
              Top = 0
              Width = 953
              Height = 933
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
              object cBoleto_LocalPagamento: TUniDBEdit
                Left = 25
                Top = 45
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_LocalPagamento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 1
                FieldLabel = 'Boleto_LocalPagamento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_Instrucoes: TUniDBEdit
                Left = 315
                Top = 45
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_Instrucoes'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 2
                FieldLabel = 'Boleto_Instrucoes'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_Contato: TUniDBCheckBox
                Left = 605
                Top = 45
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_Contato'
                DataSource = dsConfig
                Caption = 'Boleto_Contato'
                ParentFont = False
                Font.Height = -13
                TabOrder = 3
                ParentColor = False
                Color = clBtnFace
                FieldLabelWidth = 120
                FieldLabelSeparator = ' '
              end
              object cBoleto_ProtestoDias: TUniDBNumberEdit
                Left = 25
                Top = 101
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                InputRTL = False
                DataField = 'Boleto_ProtestoDias'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 4
                SelectOnFocus = True
                FieldLabel = 'Boleto_ProtestoDias'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                BorderStyle = ubsSolid
              end
              object cBoleto_EspecieDOC: TUniDBEdit
                Left = 315
                Top = 101
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_EspecieDOC'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 5
                FieldLabel = 'Boleto_EspecieDOC'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_PercentualMulta: TUniDBFormattedNumberEdit
                Left = 605
                Top = 101
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                InputRTL = False
                DataField = 'Boleto_PercentualMulta'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 6
                SelectOnFocus = True
                FieldLabel = 'Boleto_PercentualMulta'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cBoleto_PercentualJuros: TUniDBFormattedNumberEdit
                Left = 25
                Top = 157
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                InputRTL = False
                DataField = 'Boleto_PercentualJuros'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 7
                SelectOnFocus = True
                FieldLabel = 'Boleto_PercentualJuros'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                DecimalSeparator = ','
                ThousandSeparator = '.'
                BorderStyle = ubsSolid
              end
              object cBoleto_InstrucaoCod: TUniDBEdit
                Left = 315
                Top = 157
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_InstrucaoCod'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 8
                FieldLabel = 'Boleto_InstrucaoCod'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cBoleto_InstrucaoCod2: TUniDBEdit
                Left = 605
                Top = 157
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Boleto_InstrucaoCod2'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 9
                FieldLabel = 'Boleto_InstrucaoCod2'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
            end
          end
          object UniTabSheet14: TUniTabSheet
            Hint = ''
            Caption = 'Diversos'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 256
            ExplicitHeight = 128
            object pFicha12: TUniPanel
              Left = 0
              Top = 0
              Width = 953
              Height = 933
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
              object cHora_Solicitacao: TUniDBEdit
                Left = 25
                Top = 42
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Hora_Solicitacao'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 1
                FieldLabel = 'Hora_Solicitacao'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cClassificacao_Pagamento: TUniDBLookupComboBox
                Left = 315
                Top = 45
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo; Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Classificacao_Pagamento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 2
                Color = clWindow
                FieldLabel = 'Classificacao_Pagamento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cCentro_CustoPagamento: TUniDBLookupComboBox
                Left = 605
                Top = 45
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Centro_CustoPagamento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 3
                Color = clWindow
                FieldLabel = 'Centro_CustoPagamento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cTipo_DocumentoPagamento: TUniDBLookupComboBox
                Left = 25
                Top = 101
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Tipo_DocumentoPagamento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 4
                Color = clWindow
                FieldLabel = 'Tipo_DocumentoPagamento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cEmprestimoBancario_ClassificacaoR: TUniDBLookupComboBox
                Left = 315
                Top = 101
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'EmprestimoBancario_ClassificacaoR'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 5
                Color = clWindow
                FieldLabel = 'EmprestimoBancario_ClassificacaoR'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cEmprestimoBancario_ClassificacaoP: TUniDBLookupComboBox
                Left = 605
                Top = 101
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'EmprestimoBancario_ClassificacaoP'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 6
                Color = clWindow
                FieldLabel = 'EmprestimoBancario_ClassificacaoP'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cEmprestimoBancario_CentroCusto: TUniDBLookupComboBox
                Left = 25
                Top = 157
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'EmprestimoBancario_CentroCusto'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 7
                Color = clWindow
                FieldLabel = 'EmprestimoBancario_CentroCusto'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cEmprestimoBancario_TipoDocumento: TUniDBLookupComboBox
                Left = 315
                Top = 157
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'EmprestimoBancario_TipoDocumento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 8
                Color = clWindow
                FieldLabel = 'EmprestimoBancario_TipoDocumento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cEmprestimoBancario_FormaRecebimento: TUniDBEdit
                Left = 605
                Top = 157
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'EmprestimoBancario_FormaRecebimento'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 9
                FieldLabel = 'EmprestimoBancario_FormaRecebimento'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cCalculo_Comissao: TUniDBEdit
                Left = 25
                Top = 213
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                DataField = 'Calculo_Comissao'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                TabOrder = 10
                FieldLabel = 'Calculo_Comissao'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                SelectOnFocus = True
                BorderStyle = ubsSolid
              end
              object cClassificacao_PagamentoTelevendas: TUniDBLookupComboBox
                Left = 315
                Top = 213
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo; Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Classificacao_PagamentoTelevendas'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 11
                Color = clWindow
                FieldLabel = 'Classificacao_PagamentoTelevendas'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cCentro_CustoPagamentoTelevendas: TUniDBLookupComboBox
                Left = 605
                Top = 213
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Centro_CustoPagamentoTelevendas'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 12
                Color = clWindow
                FieldLabel = 'Centro_CustoPagamentoTelevendas'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cTipo_DocumentoPagamentoTelevendas: TUniDBLookupComboBox
                Left = 25
                Top = 269
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Tipo_DocumentoPagamentoTelevendas'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 13
                Color = clWindow
                FieldLabel = 'Tipo_DocumentoPagamentoTelevendas'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cClassificacao_PagamentoOutros: TUniDBLookupComboBox
                Left = 315
                Top = 269
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo; Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Classificacao_PagamentoOutros'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 14
                Color = clWindow
                FieldLabel = 'Classificacao_PagamentoOutros'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cCentro_CustoPagamentoOutros: TUniDBLookupComboBox
                Left = 605
                Top = 269
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Centro_CustoPagamentoOutros'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 15
                Color = clWindow
                FieldLabel = 'Centro_CustoPagamentoOutros'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
              object cTipo_DocumentoPagamentoOutros: TUniDBLookupComboBox
                Left = 25
                Top = 325
                Width = 250
                Height = 55
                Hint = ''
                ShowHint = True
                ListField = 'Codigo;Descricao'
                KeyField = 'Codigo'
                ListFieldIndex = 1
                BorderStyle = ubsSolid
                DataField = 'Tipo_DocumentoPagamentoOutros'
                DataSource = dsConfig
                ParentFont = False
                Font.Height = -13
                Font.Name = 'DejaVu Sans'
                Font.Style = [fsBold]
                AnyMatch = True
                TabOrder = 16
                Color = clWindow
                FieldLabel = 'Tipo_DocumentoPagamentoOutros'
                FieldLabelWidth = 120
                FieldLabelAlign = laTop
                FieldLabelSeparator = ' '
                Style = csDropDown
              end
            end
          end
        end
        object UniImage1: TUniImage
          Left = 558
          Top = 1032
          Width = 69
          Height = 49
          Hint = ''
          Center = True
          AutoSize = True
          Stretch = True
          Proportional = True
          FitWidth = True
          Images = UniMainModule.imgBotoes
          ImageIndex = 7
        end
      end
    end
    object UniTabSheet15: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet15'
      object UniScrollBox15: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 297
        object pFicha15: TUniPanel
          Left = 124
          Top = 13
          Width = 900
          Height = 284
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
          Color = clNone
          object cProcesso_Numero: TUniDBEdit
            Left = 25
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Processo_Numero'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'Processo_Numero'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cProcesso_DigitosAno: TUniDBNumberEdit
            Left = 315
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Processo_DigitosAno'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            SelectOnFocus = True
            FieldLabel = 'Processo_DigitosAno'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cBloquear_ProcessoFechado: TUniDBCheckBox
            Left = 605
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Bloquear_ProcessoFechado'
            DataSource = dsConfig
            Caption = 'Bloquear_ProcessoFechado'
            ParentFont = False
            Font.Height = -13
            TabOrder = 3
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cProcesso_ObrigarFatura: TUniDBCheckBox
            Left = 25
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Processo_ObrigarFatura'
            DataSource = dsConfig
            Caption = 'Processo_ObrigarFatura'
            ParentFont = False
            Font.Height = -13
            TabOrder = 4
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cBloquear_ItemContrato: TUniDBCheckBox
            Left = 315
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Bloquear_ItemContrato'
            DataSource = dsConfig
            Caption = 'Bloquear_ItemContrato'
            ParentFont = False
            Font.Height = -13
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cValor_DI: TUniDBFormattedNumberEdit
            Left = 605
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Valor_DI'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'Valor_DI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
        end
      end
    end
    object UniTabSheet16: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet16'
      object UniScrollBox16: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 983
        ExplicitHeight = 938
        DesignSize = (
          1209
          1135)
        ScrollHeight = 465
        object pFicha16: TUniPanel
          Left = 124
          Top = 13
          Width = 900
          Height = 452
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
          Color = clNone
          object cSISCOMEX_CodigoProduto: TUniDBCheckBox
            Left = 25
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'SISCOMEX_CodigoProduto'
            DataSource = dsConfig
            Caption = 'SISCOMEX_CodigoProduto'
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cMoeda_Importacao: TUniDBLookupComboBox
            Left = 315
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Simbolo'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Moeda_Importacao'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Moeda_Importacao'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cRamo_Atividade: TUniDBLookupComboBox
            Left = 605
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;Simbolo'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Ramo_Atividade'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Ramo_Atividade'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cAdicao_PesoLiquido: TUniDBNumberEdit
            Left = 25
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Adicao_PesoLiquido'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Adicao_PesoLiquido'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cProcesso_ImportarFechado: TUniDBCheckBox
            Left = 315
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Processo_ImportarFechado'
            DataSource = dsConfig
            Caption = 'Processo_ImportarFechado'
            ParentFont = False
            Font.Height = -13
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cSISCOMEX_MascaraReferencia: TUniDBEdit
            Left = 605
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'SISCOMEX_MascaraReferencia'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            FieldLabel = 'SISCOMEX_MascaraReferencia'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cAFRMM_Calcular: TUniDBCheckBox
            Left = 25
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'AFRMM_Calcular'
            DataSource = dsConfig
            Caption = 'AFRMM_Calcular'
            ParentFont = False
            Font.Height = -13
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cAFRMM_Tarifa: TUniDBFormattedNumberEdit
            Left = 315
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'AFRMM_Tarifa'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            SelectOnFocus = True
            FieldLabel = 'AFRMM_Tarifa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAFRMM_Taxa: TUniDBFormattedNumberEdit
            Left = 605
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'AFRMM_Taxa'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            SelectOnFocus = True
            FieldLabel = 'AFRMM_Taxa'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cAFRMM_Percentual: TUniDBFormattedNumberEdit
            Left = 25
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'AFRMM_Percentual'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            SelectOnFocus = True
            FieldLabel = 'AFRMM_Percentual'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cSISCOMEX_MascaraPosicao: TUniDBNumberEdit
            Left = 315
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'SISCOMEX_MascaraPosicao'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 11
            SelectOnFocus = True
            FieldLabel = 'SISCOMEX_MascaraPosicao'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cSISCOMEX_MascaraPO: TUniDBEdit
            Left = 605
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'SISCOMEX_MascaraPO'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 12
            FieldLabel = 'SISCOMEX_MascaraPO'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cSISCOMEX_MascaraITEM: TUniDBEdit
            Left = 25
            Top = 269
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'SISCOMEX_MascaraITEM'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 13
            FieldLabel = 'SISCOMEX_MascaraITEM'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cSISCOMEX_MascaraPOFech: TUniDBEdit
            Left = 315
            Top = 269
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'SISCOMEX_MascaraPOFech'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 14
            FieldLabel = 'SISCOMEX_MascaraPOFech'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cSISCOMEX_MascaraITEMFech: TUniDBEdit
            Left = 605
            Top = 269
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'SISCOMEX_MascaraITEMFech'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 15
            FieldLabel = 'SISCOMEX_MascaraITEMFech'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
        end
      end
    end
    object UniTabSheet17: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet17'
      object UniScrollBox17: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 983
        ExplicitHeight = 938
        DesignSize = (
          1209
          1135)
        ScrollHeight = 388
        object pFicha17: TUniPanel
          Left = 124
          Top = 13
          Width = 900
          Height = 375
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
          Color = clNone
          object cProcesso_FechamentoCSLL: TUniDBLookupComboBox
            Left = 25
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao;Valor'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Processo_FechamentoCSLL'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Processo_FechamentoCSLL'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProcesso_FechamentoIRPJ: TUniDBLookupComboBox
            Left = 315
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao;Valor'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Processo_FechamentoIRPJ'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Processo_FechamentoIRPJ'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProcesso_FechamentoICMSPagar: TUniDBFormattedNumberEdit
            Left = 605
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Processo_FechamentoICMSPagar'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'Processo_FechamentoICMSPagar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cProcesso_FechamentoFDE: TUniDBFormattedNumberEdit
            Left = 25
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Processo_FechamentoFDE'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Processo_FechamentoFDE'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cProcesso_FechamentoAssAduaneira: TUniDBFormattedNumberEdit
            Left = 315
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Processo_FechamentoAssAduaneira'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            SelectOnFocus = True
            FieldLabel = 'Processo_FechamentoAssAduaneira'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cProcesso_FechamentoClassPgtoCliente: TUniDBLookupComboBox
            Left = 605
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Processo_FechamentoClassPgtoCliente'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Processo_FechamentoClassPgtoCliente'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProcesso_FechamentoCorrecao: TUniDBFormattedNumberEdit
            Left = 25
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Processo_FechamentoCorrecao'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            SelectOnFocus = True
            FieldLabel = 'Processo_FechamentoCorrecao'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            ThousandSeparator = '.'
            BorderStyle = ubsSolid
          end
          object cProcesso_FechamentoClassCorrecao: TUniDBLookupComboBox
            Left = 315
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Processo_FechamentoClassCorrecao'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Processo_FechamentoClassCorrecao'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cProcesso_FechamentoObsTexto: TUniDBMemo
            Left = 605
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Processo_FechamentoObsTexto'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            TabOrder = 9
            FieldLabel = 'Processo_FechamentoObsTexto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cProcesso_FechamentoObservacao: TUniDBNumberEdit
            Left = 25
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Processo_FechamentoObservacao'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            SelectOnFocus = True
            FieldLabel = 'Processo_FechamentoObservacao'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cProcesso_FechamentoDRE: TUniDBLookupComboBox
            Left = 315
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Descricao'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Processo_FechamentoDRE'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 11
            Color = clWindow
            FieldLabel = 'Processo_FechamentoDRE'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
        end
      end
    end
    object UniTabSheet18: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet18'
      object UniScrollBox18: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 500
        object pFicha18: TUniPanel
          Left = 124
          Top = 13
          Width = 900
          Height = 487
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
          Color = clNone
          object cAviso_VencimentoContrato: TUniDBNumberEdit
            Left = 25
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aviso_VencimentoContrato'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 1
            SelectOnFocus = True
            FieldLabel = 'Aviso_VencimentoContrato'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cAviso_VencimentoRetorno: TUniDBNumberEdit
            Left = 315
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aviso_VencimentoRetorno'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            SelectOnFocus = True
            FieldLabel = 'Aviso_VencimentoRetorno'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_PISCOFINS: TUniDBNumberEdit
            Left = 605
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_PISCOFINS'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'Vencimento_PISCOFINS'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_PISCOFINSDias: TUniDBNumberEdit
            Left = 25
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_PISCOFINSDias'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Vencimento_PISCOFINSDias'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_FISCAL: TUniDBNumberEdit
            Left = 315
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_FISCAL'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            SelectOnFocus = True
            FieldLabel = 'Vencimento_FISCAL'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_FISCALDias: TUniDBNumberEdit
            Left = 605
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_FISCALDias'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'Vencimento_FISCALDias'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_CONTABIL: TUniDBNumberEdit
            Left = 25
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_CONTABIL'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 7
            SelectOnFocus = True
            FieldLabel = 'Vencimento_CONTABIL'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_CONTABILDias: TUniDBNumberEdit
            Left = 315
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_CONTABILDias'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 8
            SelectOnFocus = True
            FieldLabel = 'Vencimento_CONTABILDias'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_CONTABILMes: TUniDBNumberEdit
            Left = 605
            Top = 157
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_CONTABILMes'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 9
            SelectOnFocus = True
            FieldLabel = 'Vencimento_CONTABILMes'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_SINTEGRA: TUniDBNumberEdit
            Left = 25
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_SINTEGRA'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 10
            SelectOnFocus = True
            FieldLabel = 'Vencimento_SINTEGRA'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cVencimento_SINTEGRADias: TUniDBNumberEdit
            Left = 315
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Vencimento_SINTEGRADias'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 11
            SelectOnFocus = True
            FieldLabel = 'Vencimento_SINTEGRADias'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cAviso_VencimentoRadar: TUniDBNumberEdit
            Left = 605
            Top = 213
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aviso_VencimentoRadar'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 12
            SelectOnFocus = True
            FieldLabel = 'Aviso_VencimentoRadar'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cAviso_VencimentoVinculacao: TUniDBNumberEdit
            Left = 25
            Top = 269
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aviso_VencimentoVinculacao'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 13
            SelectOnFocus = True
            FieldLabel = 'Aviso_VencimentoVinculacao'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cAviso_MovimentoMinimo: TUniDBNumberEdit
            Left = 315
            Top = 269
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aviso_MovimentoMinimo'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 14
            SelectOnFocus = True
            FieldLabel = 'Aviso_MovimentoMinimo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cAviso_MovimentoMaximo: TUniDBNumberEdit
            Left = 605
            Top = 269
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Aviso_MovimentoMaximo'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 15
            SelectOnFocus = True
            FieldLabel = 'Aviso_MovimentoMaximo'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
        end
      end
    end
    object UniTabSheet19: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet19'
      object UniScrollBox19: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        DesignSize = (
          1209
          1135)
        ScrollHeight = 313
        object pFicha19: TUniPanel
          Left = 124
          Top = 13
          Width = 900
          Height = 300
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
          Color = clNone
          object cCompartilhar_Bancos: TUniDBCheckBox
            Left = 25
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Compartilhar_Bancos'
            DataSource = dsConfig
            Caption = 'Compartilhar_Bancos'
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cCompartilhar_Classificacao: TUniDBCheckBox
            Left = 315
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Compartilhar_Classificacao'
            DataSource = dsConfig
            Caption = 'Compartilhar_Classificacao'
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cAtualiza_Data: TUniDBDateTimePicker
            Left = 605
            Top = 45
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Atualiza_Data'
            DataSource = dsConfig
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 3
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Atualiza_Data'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cPrazo_Log: TUniDBNumberEdit
            Left = 25
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Prazo_Log'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            SelectOnFocus = True
            FieldLabel = 'Prazo_Log'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cXMLTerceiros_Codigo: TUniDBCheckBox
            Left = 315
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'XMLTerceiros_Codigo'
            DataSource = dsConfig
            Caption = 'XMLTerceiros_Codigo'
            ParentFont = False
            Font.Height = -13
            TabOrder = 5
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
          object cAtualiza_Anterior: TUniDBDateTimePicker
            Left = 605
            Top = 101
            Width = 250
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Atualiza_Anterior'
            DataSource = dsConfig
            DateTime = 43643.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 6
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            FieldLabel = 'Atualiza_Anterior'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
        end
      end
    end
    object UniTabSheet20: TUniTabSheet
      Hint = ''
      Caption = 'Televendas'
      object UniScrollBox20: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1211
        Height = 1137
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ExplicitWidth = 983
        ExplicitHeight = 938
        DesignSize = (
          1209
          1135)
        ScrollHeight = 457
        object pFicha20: TUniPanel
          Left = 58
          Top = 13
          Width = 660
          Height = 444
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
          object cTelevendas_Transportador: TUniDBLookupComboBox
            Left = 25
            Top = 19
            Width = 610
            Height = 55
            Hint = ''
            ShowHint = True
            ListField = 'Codigo;Nome;CNPJ'
            KeyField = 'Codigo'
            ListFieldIndex = 1
            BorderStyle = ubsSolid
            DataField = 'Televendas_Transportador'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            AnyMatch = True
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Transportador'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            Style = csDropDown
          end
          object cTelevendas_ModalidadeFrete: TUniDBNumberEdit
            Left = 25
            Top = 75
            Width = 610
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Televendas_ModalidadeFrete'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 2
            SelectOnFocus = True
            FieldLabel = 'Modalidade de Frete'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cTelevendas_TipoNota: TUniDBNumberEdit
            Left = 25
            Top = 131
            Width = 610
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Televendas_TipoNota'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 3
            SelectOnFocus = True
            FieldLabel = 'Tipo de Nota'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cTelevendas_NaturezaDentro: TUniDBEdit
            Left = 25
            Top = 187
            Width = 610
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Televendas_NaturezaDentro'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 4
            FieldLabel = 'Natureza Opera'#231#227'o (Dentro do Estado)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cTelevendas_NaturezaFora: TUniDBEdit
            Left = 25
            Top = 243
            Width = 610
            Height = 55
            Hint = ''
            ShowHint = True
            DataField = 'Televendas_NaturezaFora'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 5
            FieldLabel = 'Natureza Opera'#231#227'o (Fora do Estado)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            SelectOnFocus = True
            BorderStyle = ubsSolid
          end
          object cTelevendas_ModalidadePgto: TUniDBNumberEdit
            Left = 25
            Top = 299
            Width = 610
            Height = 55
            Hint = ''
            ShowHint = True
            InputRTL = False
            DataField = 'Televendas_ModalidadePgto'
            DataSource = dsConfig
            ParentFont = False
            Font.Height = -13
            Font.Name = 'DejaVu Sans'
            Font.Style = [fsBold]
            TabOrder = 6
            SelectOnFocus = True
            FieldLabel = 'Modalidade Pgto'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            DecimalSeparator = ','
            BorderStyle = ubsSolid
          end
          object cTelevendas_EstoqueTerceiros: TUniDBCheckBox
            Left = 25
            Top = 387
            Width = 550
            Height = 18
            Hint = ''
            ShowHint = True
            DataField = 'Televendas_EstoqueTerceiros'
            DataSource = dsConfig
            Caption = 
              'Computar o estoque em terceiros como estoque dispon'#237'vel para os ' +
              'pedidos do Televendas.'
            ParentFont = False
            Font.Height = -13
            TabOrder = 7
            ParentColor = False
            Color = clBtnFace
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    ClientEvents.UniEvents.Strings = (    'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +     '= '#39'Pasta'#39';'#13#10'}') 

    Left = 0
    Top = 0
    Width = 1219
    Height = 35
    Hint = ''
    Align = alTop
    TabOrder = 1
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
    object bSalvar: TUniSpeedButton
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
  object dsConfig: TDataSource
    DataSet = Config
    Left = 32
    Top = 122
  end
  object Config: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Config')
    Left = 32
    Top = 72
  end
  object dPasta: TOpenDialog
    FileName = 
      'C:\Projetos_WEB\ERP_Importa\Win32\Debug\files\images\Logomarcas\' +
      'MainModule.dfm'
    Options = [ofPathMustExist, ofEnableSizing]
    Left = 32
    Top = 587
  end
  object Orgao: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Destinatarios where orgao_publico =1')
    Left = 32
    Top = 176
  end
  object dsOrgao: TDataSource
    DataSet = Orgao
    Left = 32
    Top = 226
  end
  object Doc: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM TiposDocumentos')
    Left = 32
    Top = 280
  end
  object dsDoc: TDataSource
    DataSet = Doc
    Left = 32
    Top = 322
  end
  object Ramo: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM RamoAtividade')
    Left = 32
    Top = 368
  end
  object dsRamo: TDataSource
    DataSet = Ramo
    Left = 32
    Top = 418
  end
  object Contas: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Conta, Codigo, Nome FROM PlanoContas')
    Left = 32
    Top = 472
  end
  object dsContas: TDataSource
    DataSet = Contas
    Left = 32
    Top = 522
  end
  object Historico: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo, Descricao FROM Historicos')
    Left = 96
    Top = 472
  end
  object dsHistorico: TDataSource
    DataSet = Historico
    Left = 96
    Top = 522
  end
  object PlanoFin: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT Codigo, Nome FROM PlanoFinanceiro')
    Left = 104
    Top = 72
  end
  object dsPlanoFin: TDataSource
    DataSet = PlanoFin
    Left = 104
    Top = 122
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
end

