object fCadConfigsis: TfCadConfigsis
  Left = 0
  Top = 0
  Width = 1288
  Height = 1001
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  TAutoScroll = True
  object RxLabel3: TuniLabel
    Left = 5
    Top = 0
    Width = 118
    Height = 21
    Caption = 'CONFIGURA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Transparent = True
  end
  object RxLabel2: TuniLabel
    Left = 5
    Top = 17
    Width = 274
    Height = 18
    Caption = 'Configura'#245'es e Par'#226'metriza'#231#245'es do sistema.'
    Font.Charset = DEFAULT_CHARSET
    Transparent = True
  end
  object Panel1: TuniPanel
    Left = 0
    Top = 631
    Width = 855
    Height = 30
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      855
      30)
    object cVersaoDLL: TuniLabel
      Left = 6
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Vers'#227'o DLL'
      Font.Charset = DEFAULT_CHARSET
      OnClick = cVersaoDLLClick
    end
    object bSalvar: TuniButton
      Left = 704
      Top = 1
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Sal&var'
      TabOrder = 0
      OnClick = bSalvarClick
    end
    object bSair: TuniButton
      Left = 779
      Top = 1
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
  end
object Pasta: TuniPageControl
        ClientEvents.UniEvents.Strings = (
             'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' + 
             's = '#39'PastaInterna'#39';'#13#10'}')
    Left = 4
    Top = 42
    Width = 847
    Height = 582
    ActivePage = TabSheet12
    TabOrder = 1
    object TabSheet1: TuniTabSheet
      Caption = '&Sistema'
      object GroupBox3: TuniGroupBox
        Left = 7
        Top = 202
        Width = 823
        Height = 295
        Caption = 'Rede / Internet'
        TabOrder = 4
        object cSite: TuniDBEdit
          Left = 180
          Top = 16
          Width = 638
          Height = 55
          DataField = 'Site'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          FieldLabel = 'Site'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cEmail_Suporte: TuniDBEdit
          Left = 180
          Top = 39
          Width = 638
          Height = 55
          DataField = 'Email_Suporte'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          FieldLabel = 'E-mail do Suporte'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cIP_Suporte: TuniDBEdit
          Left = 180
          Top = 108
          Width = 517
          Height = 55
          DataField = 'IP_Suporte'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 3
          FieldLabel = 'IP do Suporte'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cServidor_Proxy: TuniDBEdit
          Left = 180
          Top = 62
          Width = 638
          Height = 55
          DataField = 'Servidor_Proxy'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 2
          FieldLabel = 'Endere'#231'o do servidor Proxy '
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cUsuario_Proxy: TuniDBEdit
          Left = 180
          Top = 85
          Width = 349
          Height = 55
          DataField = 'Usuario_Proxy'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 4
          FieldLabel = 'Usu'#225'rio Proxy'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cSenha_FTP: TuniDBEdit
          Left = 571
          Top = 131
          Width = 247
          Height = 55
          DataField = 'Senha_FTP'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          PasswordChar = #8226
          TabOrder = 5
          FieldLabel = 'Senha'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cUsuario_FTP: TuniDBEdit
          Left = 180
          Top = 131
          Width = 349
          Height = 55
          DataField = 'Usuario_FTP'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 13
          FieldLabel = 'Usu'#225'rio FTP'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cSenha_Proxy: TuniDBEdit
          Left = 571
          Top = 85
          Width = 247
          Height = 55
          DataField = 'Senha_Proxy'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          PasswordChar = #8226
          TabOrder = 15
          FieldLabel = 'Senha'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cPasta_BackupCybersoft: TuniDBEdit
          Left = 180
          Top = 154
          Width = 638
          Height = 55
          DataField = 'Pasta_BackupCybersoft'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 17
          FieldLabel = 'Pasta Backup Servidor (Cybersoft)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cPassive_FTP: TuniDBCheckBox
          Left = 704
          Top = 110
          Width = 113
          Height = 55
          Caption = 'FTP Passive mode'
          DataField = 'Passive_FTP'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 18
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cServidor_Local: TuniDBRadioGroup
          Left = 6
          Top = 242
          Width = 499
          Height = 55
          Caption = 'Tipo de Servidor'
          Columns = 3
          DataField = 'Servidor_Local'
          DataSource = Config
          Items.Strings = (
            'Servidor de Rede'
            'M'#225'quina local'
            'Data Center')
          TabOrder = 19
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object cPasta_AtualizacaoCybersoft: TuniDBEdit
          Left = 180
          Top = 177
          Width = 638
          Height = 55
          DataField = 'Pasta_AtualizacaoCybersoft'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 21
          FieldLabel = 'Pasta Atualiz.Servidor (Cybersoft)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cNome_Servidor: TuniDBEdit
          Left = 180
          Top = 200
          Width = 638
          Height = 55
          DataField = 'Nome_Servidor'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 23
          FieldLabel = 'Nome do Servidor'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
      object cFormato_Data: TuniDBComboBox
        Left = 156
        Top = 145
        Width = 105
        Height = 55
        DataField = 'Formato_Data'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        Items.Strings = (
          'dd/mm/aa'
          'dd/mm/aaaa'
          'dd.mm.aa'
          'dd.mm.aaaa'
          'dd-mm-aa'
          'dd-mm-aaaa')
        TabOrder = 1
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object GroupBox9: TuniGroupBox
        Left = 7
        Top = 5
        Width = 282
        Height = 105
        Caption = 'Ambiente'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object cAtivar_Skin: TuniDBCheckBox
          Left = 8
          Top = 19
          Width = 76
          Height = 55
          Caption = 'Ativar Skin'
          DataField = 'Ativar_Skin'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cAtivar_Som: TuniDBCheckBox
          Left = 8
          Top = 39
          Width = 192
          Height = 55
          Caption = 'Habilitar Sinais Sonoros no Sistema.'
          DataField = 'Ativar_Som'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cAtualizar_Moedas: TuniDBCheckBox
          Left = 8
          Top = 59
          Width = 249
          Height = 55
          Caption = 'Atualiza'#231#227'o da cota'#231#227'o de moedas automatica.'
          DataField = 'Atualizar_Moedas'
          DataSource = Config
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cBackup_Automatico: TuniDBCheckBox
          Left = 8
          Top = 79
          Width = 119
          Height = 55
          Caption = 'Backup autom'#225'tico.'
          DataField = 'Backup_Automatico'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
      object cBackup_Hora: TuniDBEdit
        Left = 156
        Top = 168
        Width = 105
        Height = 55
        DataField = 'Backup_Hora'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 2
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cVersao_NFE: TuniDBComboBox
        Left = 156
        Top = 122
        Width = 105
        Height = 55
        Style = csDropDownList
        DataField = 'Versao_NFE'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        Items.Strings = (
          '1.07'
          '2.00')
        TabOrder = 7
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object GroupBox26: TuniGroupBox
        Left = 303
        Top = 5
        Width = 314
        Height = 105
        Caption = 'Atualiza'#231#227'o'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 8
        object cAtualizar_Sistema: TuniDBCheckBox
          Left = 8
          Top = 19
          Width = 291
          Height = 55
          Caption = 'Avisar quando houver atualiza'#231#227'o do sistema dispon'#237'vel.'
          DataField = 'Atualizar_Sistema'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
    end
    object TabSheet2: TuniTabSheet
      Caption = '&Pastas'
      ImageIndex = 1
      object cLog: TuniEdit
        Left = 133
        Top = 5
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 0
      end
      object cIni: TuniEdit
        Left = 133
        Top = 28
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 1
      end
      object cSISCOMEX: TuniEdit
        Left = 133
        Top = 51
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 2
      end
      object cImpressao: TuniEdit
        Left = 133
        Top = 97
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 4
      end
      object cExportacao: TuniEdit
        Left = 133
        Top = 120
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 5
      end
      object cSintegra: TuniEdit
        Left = 133
        Top = 166
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 7
      end
      object cNFe: TuniEdit
        Left = 133
        Top = 212
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 9
      end
      object cSPEDFiscal: TuniEdit
        Left = 133
        Top = 189
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 8
      end
      object cSkin: TuniEdit
        Left = 133
        Top = 258
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 11
      end
      object cBACKUP: TuniEdit
        Left = 133
        Top = 281
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 12
      end
      object cImportacao: TuniEdit
        Left = 133
        Top = 143
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 6
      end
      object cAtualiza: TuniEdit
        Left = 133
        Top = 327
        Width = 700
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 14
      end
      object cBACKUPCopia: TuniEdit
        Left = 133
        Top = 304
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 13
      end
      object cTemporaria: TuniEdit
        Left = 133
        Top = 350
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 15
      end
      object cSISCOMEXWEB: TuniEdit
        Left = 133
        Top = 74
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 3
      end
      object cBoletos: TuniEdit
        Left = 133
        Top = 373
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 16
      end
      object cImagens: TuniEdit
        Left = 133
        Top = 396
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 17
      end
      object cGNRE: TuniEdit
        Left = 133
        Top = 235
        Width = 700
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 10
      end
      object GroupBox35: TuniGroupBox
        Left = 8
        Top = 440
        Width = 209
        Height = 75
        Caption = 'NF-e'
        TabOrder = 36
        object cSeparar_NFE: TuniDBCheckBox
          Left = 9
          Top = 22
          Width = 192
          Height = 55
          Caption = 'Pastas separadas (Entrada/Sa'#237'da)'
          DataField = 'Separar_NFE'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cSeparar_NFEMes: TuniDBCheckBox
          Left = 9
          Top = 46
          Width = 144
          Height = 55
          Caption = 'Pastas separadas (M'#234's)'
          DataField = 'Separar_NFEMes'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
      object GroupBox36: TuniGroupBox
        Left = 256
        Top = 440
        Width = 177
        Height = 75
        Caption = 'Boletos'
        TabOrder = 37
        object cSeparar_BoletoBanco: TuniDBCheckBox
          Left = 9
          Top = 22
          Width = 160
          Height = 55
          Caption = 'Pastas separadas (Bancos)'
          DataField = 'Separar_BoletoBanco'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cSeparar_BoletoData: TuniDBCheckBox
          Left = 9
          Top = 46
          Width = 144
          Height = 55
          Caption = 'Pastas separadas (Data)'
          DataField = 'Separar_BoletoData'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
    end
    object TabSheet4: TuniTabSheet
      Caption = '&Impress'#227'o'
      ImageIndex = 3
      object GroupBox5: TuniGroupBox
        Left = 8
        Top = 8
        Width = 249
        Height = 118
        Caption = 'Memorando de Exporta'#231#227'o'
        TabOrder = 0
        object cMemorando_LinhasItens: TuniDBEdit
          Left = 157
          Top = 21
          Width = 82
          Height = 55
          DataField = 'Memorando_LinhasItens'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          FieldLabel = 'Linhas de Itens'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cMemorando_LinhasNotas: TuniDBEdit
          Left = 157
          Top = 44
          Width = 82
          Height = 55
          DataField = 'Memorando_LinhasNotas'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          FieldLabel = 'Linhas de Notas de Entrada'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cMemorando_Tamaho: TuniDBEdit
          Left = 157
          Top = 67
          Width = 82
          Height = 55
          DataField = 'Memorando_Tamaho'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 2
          FieldLabel = 'Tamanho em Linhas'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
      object GroupBox6: TuniGroupBox
        Left = 288
        Top = 8
        Width = 249
        Height = 118
        Caption = 'Nota fiscal de servi'#231'o'
        TabOrder = 1
        object cNotaServico_Serie: TuniDBEdit
          Left = 157
          Top = 43
          Width = 82
          Height = 55
          DataField = 'NotaServico_Serie'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          TabOrder = 1
          FieldLabel = 'S'#233'rie'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cNotaServico_SubSerie: TuniDBEdit
          Left = 157
          Top = 66
          Width = 82
          Height = 55
          DataField = 'NotaServico_SubSerie'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          TabOrder = 2
          FieldLabel = 'Sub-S'#233'rie'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cNotaServico_Modelo: TuniDBEdit
          Left = 157
          Top = 20
          Width = 82
          Height = 55
          DataField = 'NotaServico_Modelo'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          TabOrder = 0
          FieldLabel = 'Modelo'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cNotaServico_Tamanho: TuniDBEdit
          Left = 157
          Top = 89
          Width = 82
          Height = 55
          DataField = 'NotaServico_Tamanho'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          TabOrder = 3
          FieldLabel = 'Tamanho em Linhas'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
      object cExtenso_Maiusculo: TuniDBCheckBox
        Left = 8
        Top = 200
        Width = 252
        Height = 55
        Caption = 'Impress'#227'o de valores por extenso em ma'#237'usculo.'
        DataField = 'Extenso_Maiusculo'
        DataSource = Config
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object cCaminho_Impressora: TuniDBEdit
        Left = 147
        Top = 157
        Width = 584
        Height = 55
        DataField = 'Caminho_Impressora'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 4
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cAbrir_PDFDANFE: TuniDBCheckBox
        Left = 8
        Top = 220
        Width = 281
        Height = 55
        Caption = 'Abrir PDF do DANFE ap'#243's envio de NF-e para SEFAZ.'
        DataField = 'Abrir_PDFDANFE'
        DataSource = Config
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object GroupBox24: TuniGroupBox
        Left = 8
        Top = 264
        Width = 353
        Height = 97
        Caption = 'Impress'#227'o do DANFE'
        TabOrder = 6
        object cNFE_DANFE_Orientacao: TuniDBRadioGroup
          Left = 8
          Top = 24
          Width = 137
          Height = 55
          Caption = 'Orienta'#231#227'o'
          DataField = 'NFE_DANFE_Orientacao'
          DataSource = Config
          Items.Strings = (
            'Retrato'
            'Paisagem')
          TabOrder = 0
          Values.Strings = (
            '1'
            '2')
        end
        object cNFE_DANFE_CodigoProduto: TuniDBRadioGroup
          Left = 160
          Top = 24
          Width = 185
          Height = 55
          Caption = 'C'#243'digo da Mercadoria'
          DataField = 'NFE_DANFE_CodigoProduto'
          DataSource = Config
          Items.Strings = (
            'C'#243'digo Interno'
            'C'#243'digo do Fabricante')
          TabOrder = 1
          Values.Strings = (
            'I'
            'F')
        end
      end
    end
    object TabSheet11: TuniTabSheet
      Caption = '&Faturamento'
      ImageIndex = 5
      object GroupBox2: TuniGroupBox
        Left = 4
        Top = 4
        Width = 812
        Height = 112
        Caption = 'Rateios'
        TabOrder = 0
        object cRateio_Frete: TuniDBRadioGroup
          Left = 11
          Top = 19
          Width = 104
          Height = 55
          Caption = 'Frete'
          DataField = 'Rateio_Frete'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          TabOrder = 0
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object cRateio_Seguro: TuniDBRadioGroup
          Left = 122
          Top = 19
          Width = 105
          Height = 55
          Caption = 'Seguro'
          DataField = 'Rateio_Seguro'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          TabOrder = 1
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object cRateio_Despesas: TuniDBRadioGroup
          Left = 234
          Top = 19
          Width = 95
          Height = 55
          Caption = 'Despesas'
          DataField = 'Rateio_Despesas'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          TabOrder = 2
          Values.Strings = (
            'Q'
            'V'
            'P')
          OnChange = cRateio_DespesasChange
        end
        object cRateio_COFINS: TuniDBRadioGroup
          Left = 561
          Top = 19
          Width = 106
          Height = 55
          Caption = 'COFINS'
          DataField = 'Rateio_COFINS'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          TabOrder = 3
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object cRateio_PIS: TuniDBRadioGroup
          Left = 452
          Top = 19
          Width = 102
          Height = 55
          Caption = 'PIS'
          DataField = 'Rateio_PIS'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Quantidade'
            'Valor FOB'
            'Peso')
          TabOrder = 4
          Values.Strings = (
            'Q'
            'V'
            'P')
        end
        object cRateio_Valoracao: TuniDBRadioGroup
          Left = 673
          Top = 19
          Width = 127
          Height = 55
          Caption = 'Acr'#233'scimo'
          DataField = 'Rateio_Valoracao'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Valor FOB'
            'Peso (Invoice)'
            'Peso (Rateado DI)')
          TabOrder = 5
          Values.Strings = (
            'V'
            'P'
            'D')
        end
        object cRateio_DespesasValor: TuniDBRadioGroup
          Left = 336
          Top = 19
          Width = 109
          Height = 55
          Caption = 'Ratear Despesas'
          DataField = 'Rateio_DespesasValor'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Items.Strings = (
            'Valor FOB'
            'Valor CIF + II')
          TabOrder = 6
          Values.Strings = (
            'FOB'
            'CIF')
        end
      end
      object cValor_Despesas: TuniDBRadioGroup
        Left = 4
        Top = 322
        Width = 274
        Height = 55
        Caption = 'Valor das Despesas de Custo do processo'
        Columns = 2
        DataField = 'Valor_Despesas'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        Items.Strings = (
          'Pelo Total L'#237'quido'
          'Pelo Total Bruto')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object cEmail_NFE: TuniDBEdit
        Left = 321
        Top = 383
        Width = 512
        Height = 55
        DataField = 'Email_NFE'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 3
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object GroupBox27: TuniGroupBox
        Left = 4
        Top = 126
        Width = 512
        Height = 185
        Caption = 'Diversos'
        TabOrder = 1
        object cBotao_Duplicata: TuniDBCheckBox
          Left = 9
          Top = 18
          Width = 293
          Height = 55
          Caption = 'Desabilitar bot'#227'o "Gerar Duplicatas" das telas de Pedido.'
          DataField = 'Botao_Duplicata'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cVolumes_Entrada: TuniDBCheckBox
          Left = 9
          Top = 38
          Width = 438
          Height = 55
          Caption = 
            'Pegar automaticamento a quantidade de volumes do processo para o' +
            's pedidos Entrada.'
          DataField = 'Volumes_Entrada'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cVolumes_Saida: TuniDBCheckBox
          Left = 9
          Top = 58
          Width = 445
          Height = 55
          Caption = 
            'Pegar automaticamento a quantidade de volumes do processo para o' +
            's pedidos de Sa'#237'da.'
          DataField = 'Volumes_Saida'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cFaturamento_TravaContainer: TuniDBCheckBox
          Left = 9
          Top = 78
          Width = 377
          Height = 55
          Caption = 
            'N'#227'o permitir envio de NF-e se o processo n'#227'o tiver containers ca' +
            'dastrados.'
          DataField = 'Faturamento_TravaContainer'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cFaturamento_AvisoDuplicata: TuniDBCheckBox
          Left = 9
          Top = 98
          Width = 486
          Height = 55
          Caption = 
            'Avisar quando "Tipo de Nota" gerar Pagar/Receber e "Duplicatas" ' +
            'n'#227'o forem geradas no pedido.'
          DataField = 'Faturamento_AvisoDuplicata'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cCalculo_Reverso: TuniDBCheckBox
          Left = 9
          Top = 118
          Width = 199
          Height = 55
          Caption = 'Habilitar c'#225'lculo reverso nos pedidos.'
          DataField = 'Calculo_Reverso'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cFaturamento_BloquearAtraso: TuniDBCheckBox
          Left = 9
          Top = 138
          Width = 304
          Height = 55
          Caption = 'Bloquear pedidos para clientes com pagamentos em atraso.'
          DataField = 'Faturamento_BloquearAtraso'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cFaturamento_TravaDuplicata: TuniDBCheckBox
          Left = 9
          Top = 159
          Width = 449
          Height = 55
          Caption = 
            'S'#243' permitir parcelamento de duplicatas com valor exato do Pedido' +
            ' (Pedido de Nota Fiscal).'
          DataField = 'Faturamento_TravaDuplicata'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
      object GroupBox30: TuniGroupBox
        Left = 7
        Top = 417
        Width = 474
        Height = 50
        Caption = 'Estoque Min'#237'mo'
        TabOrder = 4
        DesignSize = (
          474
          50)
        object cEstoque_MinimoPerc: TuniDBEdit
          Left = 91
          Top = 19
          Width = 78
          Height = 55
          DataField = 'Estoque_MinimoPerc'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 0
          FieldLabel = 'Percentual'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object bMinimo: TuniButton
          Left = 207
          Top = 9
          Width = 262
          Height = 36
          Anchors = [akTop, akRight]
          Caption = 'Reprocessar Estoque Min'#237'mo de todos os produtos'
          TabOrder = 2
          OnClick = bMinimoClick
        end
      end
    end
    object TabSheet12: TuniTabSheet
      Caption = 'Fisc&ais'
      ImageIndex = 6
      object PageControl4: TuniPageControl
        Left = 5
        Top = 2
        Width = 817
        Height = 534
        ActivePage = TabSheet21
        TabOrder = 0
        object TabSheet20: TuniTabSheet
          Caption = '&Diversos'
          object GroupBox1: TuniGroupBox
            Left = 5
            Top = 3
            Width = 339
            Height = 73
            Caption = 'Natureza da Opera'#231#227'o'
            TabOrder = 0
            object cNatureza_EntradaIni: TuniDBEdit
              Left = 74
              Top = 22
              Width = 57
              Height = 55
              DataField = 'Natureza_EntradaIni'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'Entrada de'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cNatureza_EntradaFim: TuniDBEdit
              Left = 167
              Top = 22
              Width = 57
              Height = 55
              DataField = 'Natureza_EntradaFim'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cNatureza_SaidaIni: TuniDBEdit
              Left = 74
              Top = 45
              Width = 57
              Height = 55
              DataField = 'Natureza_SaidaIni'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'Sa'#237'da de'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cNatureza_SaidaFim: TuniDBEdit
              Left = 167
              Top = 45
              Width = 57
              Height = 55
              DataField = 'Natureza_SaidaFim'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 3
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox7: TuniGroupBox
            Left = 5
            Top = 90
            Width = 339
            Height = 117
            Caption = 'Conhecimento de Transporte (CTR)'
            TabOrder = 1
            object cPIS_CTR: TuniDBEdit
              Left = 111
              Top = 18
              Width = 57
              Height = 55
              DataField = 'PIS_CTR'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cCOFINS_CTR: TuniDBEdit
              Left = 111
              Top = 41
              Width = 57
              Height = 55
              DataField = 'COFINS_CTR'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clRamo_CTR: TuniDBLookupComboBox
              Left = 111
              Top = 64
              Width = 219
              Height = 55
              DataField = 'Ramo_CTR'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              Font.Pitch = fpFixed
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsRamoAtividade
              TabOrder = 6
              FieldLabel = 'Ramo de Atividade'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cItem_CTR: TuniDBEdit
              Left = 111
              Top = 87
              Width = 138
              Height = 55
              DataField = 'Item_CTR'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 7
              FieldLabel = 'C'#243'digo Produto'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox17: TuniGroupBox
            Left = 357
            Top = 3
            Width = 339
            Height = 73
            Caption = 'Al'#237'quotas b'#225'sicas de PIS/COFINS'
            TabOrder = 2
            object cPIS_AliquotaBasica: TuniDBEdit
              Left = 108
              Top = 18
              Width = 57
              Height = 55
              DataField = 'PIS_AliquotaBasica'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'PIS (Entrada)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cCOFINS_AliquotaBasica: TuniDBEdit
              Left = 272
              Top = 17
              Width = 57
              Height = 55
              DataField = 'COFINS_AliquotaBasica'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              FieldLabel = 'COFINS (Entrada)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cPIS_AliquotaBasicaSaida: TuniDBEdit
              Left = 108
              Top = 41
              Width = 57
              Height = 55
              DataField = 'PIS_AliquotaBasicaSaida'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'PIS (Sa'#237'da)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cCOFINS_AliquotaBasicaSaida: TuniDBEdit
              Left = 272
              Top = 40
              Width = 57
              Height = 55
              DataField = 'COFINS_AliquotaBasicaSaida'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 3
              FieldLabel = 'COFINS (Sa'#237'da)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox29: TuniGroupBox
            Left = 357
            Top = 90
            Width = 339
            Height = 66
            Caption = 'CIAP'
            TabOrder = 3
            object cValor_CIAP: TuniDBEdit
              Left = 197
              Top = 38
              Width = 121
              Height = 55
              DataField = 'Valor_CIAP'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'Valor M'#237'nimo para imobilizado (CIAP)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cParcelas_CIAP: TuniDBEdit
              Left = 197
              Top = 15
              Width = 56
              Height = 55
              DataField = 'Parcelas_CIAP'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'Quantidade de Parcelas (Meses)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox10: TuniGroupBox
            Left = 5
            Top = 278
            Width = 800
            Height = 212
            Caption = 'Vencimentos dos  Impostos (Dia)'
            TabOrder = 4
            object cVencimento_ICMSFUNDAP: TuniDBEdit
              Left = 95
              Top = 20
              Width = 42
              Height = 55
              DataField = 'Vencimento_ICMSFUNDAP'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'ICMS FUNDAP'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_ICMSINVEST: TuniDBEdit
              Left = 95
              Top = 43
              Width = 42
              Height = 55
              DataField = 'Vencimento_ICMSINVEST'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              FieldLabel = 'ICMS INVEST'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_ICMSComercio: TuniDBEdit
              Left = 95
              Top = 66
              Width = 42
              Height = 55
              DataField = 'Vencimento_ICMSComercio'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'ICMS Com'#233'rcio'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_PIS: TuniDBEdit
              Left = 95
              Top = 112
              Width = 42
              Height = 55
              DataField = 'Vencimento_PIS'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 8
              FieldLabel = 'PIS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_COFINS: TuniDBEdit
              Left = 95
              Top = 135
              Width = 42
              Height = 55
              DataField = 'Vencimento_COFINS'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 11
              FieldLabel = 'COFINS'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_IPI: TuniDBEdit
              Left = 95
              Top = 89
              Width = 42
              Height = 55
              DataField = 'Vencimento_IPI'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 5
              FieldLabel = 'IPI'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_IRPJ: TuniDBEdit
              Left = 95
              Top = 158
              Width = 42
              Height = 55
              DataField = 'Vencimento_IRPJ'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 14
              FieldLabel = 'IRPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cVencimento_CSLL: TuniDBEdit
              Left = 95
              Top = 181
              Width = 42
              Height = 55
              DataField = 'Vencimento_CSLL'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 17
              FieldLabel = 'CSLL'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cClassICMS: TuniDBLookupComboBox
              Left = 182
              Top = 66
              Width = 300
              Height = 55
              DataField = 'Vencimento_ICMSOrgao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome'
              ListFieldIndex = 1
              ListSource = dsOrgaos
              TabOrder = 3
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo3: TuniDBLookupComboBox
              Left = 536
              Top = 66
              Width = 253
              Height = 55
              DataField = 'Vencimento_ICMSDoc'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 4
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo4: TuniDBLookupComboBox
              Left = 182
              Top = 89
              Width = 300
              Height = 55
              DataField = 'Vencimento_IPIOrgao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome'
              ListFieldIndex = 1
              ListSource = dsOrgaos
              TabOrder = 6
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo5: TuniDBLookupComboBox
              Left = 536
              Top = 89
              Width = 253
              Height = 55
              DataField = 'Vencimento_IPIDoc'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 7
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo6: TuniDBLookupComboBox
              Left = 182
              Top = 112
              Width = 300
              Height = 55
              DataField = 'Vencimento_PISOrgao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome'
              ListFieldIndex = 1
              ListSource = dsOrgaos
              TabOrder = 9
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo7: TuniDBLookupComboBox
              Left = 536
              Top = 112
              Width = 253
              Height = 55
              DataField = 'Vencimento_PISDoc'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 10
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo8: TuniDBLookupComboBox
              Left = 182
              Top = 135
              Width = 300
              Height = 55
              DataField = 'Vencimento_COFINSOrgao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome'
              ListFieldIndex = 1
              ListSource = dsOrgaos
              TabOrder = 12
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo9: TuniDBLookupComboBox
              Left = 536
              Top = 135
              Width = 253
              Height = 55
              DataField = 'Vencimento_COFINSDoc'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 13
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo10: TuniDBLookupComboBox
              Left = 182
              Top = 158
              Width = 300
              Height = 55
              DataField = 'Vencimento_IRPJOrgao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome'
              ListFieldIndex = 1
              ListSource = dsOrgaos
              TabOrder = 15
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo11: TuniDBLookupComboBox
              Left = 536
              Top = 158
              Width = 253
              Height = 55
              DataField = 'Vencimento_IRPJDoc'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 16
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo12: TuniDBLookupComboBox
              Left = 182
              Top = 181
              Width = 300
              Height = 55
              DataField = 'Vencimento_CSLLOrgao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome'
              ListFieldIndex = 1
              ListSource = dsOrgaos
              TabOrder = 18
              FieldLabel = 'Org'#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBLookupCombo13: TuniDBLookupComboBox
              Left = 536
              Top = 181
              Width = 253
              Height = 55
              DataField = 'Vencimento_CSLLDoc'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 19
              FieldLabel = 'Tipo DOC'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox33: TuniGroupBox
            Left = 5
            Top = 222
            Width = 339
            Height = 45
            Caption = 'Diferencial de Al'#237'quota ICMS (DIFAL)'
            TabOrder = 5
            object cDIFAL_ICMSPart: TuniDBEdit
              Left = 276
              Top = 16
              Width = 55
              Height = 55
              DataField = 'DIFAL_ICMSPart'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object cValor_ManifestoNFE: TuniDBEdit
            Left = 598
            Top = 182
            Width = 99
            Height = 55
            DataField = 'Valor_ManifestoNFE'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 6
            FieldLabel = 'Valor M'#237'nimo para Manifesta'#231#227'o de Nota Fiscal'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
        object TabSheet21: TuniTabSheet
          Caption = 'SPED'
          ImageIndex = 1
          object GroupBox11: TuniGroupBox
            Left = 7
            Top = 11
            Width = 480
            Height = 70
            Caption = 'Inventario (SPED FISCAL)'
            TabOrder = 0
            object cMes: TuniComboBox
              Left = 185
              Top = 17
              Width = 160
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              Text = 'cMes'
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
            end
            object cConta_Inventario: TuniDBEdit
              Left = 185
              Top = 40
              Width = 160
              Height = 55
              DataField = 'Conta_Inventario'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'C'#243'digo da conta anal'#237'tica cont'#225'bil '
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox18: TuniGroupBox
            Left = 7
            Top = 104
            Width = 480
            Height = 145
            Caption = 'Contas Cont'#225'beis para o PIS (SPED PIS/COFINS)'
            TabOrder = 1
            object cPIS_ContaCodigo: TuniDBEdit
              Left = 122
              Top = 22
              Width = 160
              Height = 55
              DataField = 'PIS_ContaCodigo'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'C'#243'digo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cPIS_ContaNivel: TuniDBEdit
              Left = 122
              Top = 46
              Width = 160
              Height = 55
              DataField = 'PIS_ContaNivel'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              FieldLabel = 'Nivel'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cPIS_ContaNome: TuniDBEdit
              Left = 122
              Top = 69
              Width = 344
              Height = 55
              DataField = 'PIS_ContaNome'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'Nome'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBComboBox1: TuniDBComboBox
              Left = 122
              Top = 115
              Width = 191
              Height = 55
              Style = csDropDownList
              DataField = 'PIS_ContaNatureza'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              Items.Strings = (
                'Contas de ativo'
                'Contas de passivo'
                'Patrim'#244'nio l'#237'quido'
                'Contas de resultado'
                'Contas de compensa'#231#227'o'
                'Outras')
              TabOrder = 4
              FieldLabel = 'Natureza'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBComboBox2: TuniDBComboBox
              Left = 122
              Top = 92
              Width = 191
              Height = 55
              Style = csDropDownList
              DataField = 'PIS_ContaIndicador'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              Items.Strings = (
                'Sint'#233'tica'
                'Anal'#237'tica')
              TabOrder = 3
              FieldLabel = 'Indicador (Sint/Anal)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
          object GroupBox19: TuniGroupBox
            Left = 7
            Top = 275
            Width = 480
            Height = 142
            Caption = 'Contas Cont'#225'beis para a COFINS (SPED PIS/COFINS)'
            TabOrder = 2
            object cCOFINS_ContaCodigo: TuniDBEdit
              Left = 122
              Top = 17
              Width = 160
              Height = 55
              DataField = 'COFINS_ContaCodigo'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 0
              FieldLabel = 'C'#243'digo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cCOFINS_ContaNivel: TuniDBEdit
              Left = 122
              Top = 41
              Width = 160
              Height = 55
              DataField = 'COFINS_ContaNivel'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 1
              FieldLabel = 'N'#237'vel'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cCOFINS_ContaNome: TuniDBEdit
              Left = 122
              Top = 65
              Width = 344
              Height = 55
              DataField = 'COFINS_ContaNome'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'Nome'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object RxDBComboBox3: TuniDBComboBox
              Left = 122
              Top = 111
              Width = 191
              Height = 55
              Style = csDropDownList
              DataField = 'COFINS_ContaNatureza'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              Items.Strings = (
                'Contas de ativo'
                'Contas de passivo'
                'Patrim'#244'nio l'#237'quido'
                'Contas de resultado'
                'Contas de compensa'#231#227'o'
                'Outras')
              TabOrder = 4
              FieldLabel = 'Natureza'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object RxDBComboBox4: TuniDBComboBox
              Left = 122
              Top = 88
              Width = 191
              Height = 55
              Style = csDropDownList
              DataField = 'COFINS_ContaIndicador'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              Items.Strings = (
                'Sint'#233'tica'
                'Anal'#237'tica')
              TabOrder = 3
              FieldLabel = 'Indicador (Sint/Anal)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
          end
        end
      end
    end
    object TabSheet7: TuniTabSheet
      Caption = '&Cont'#225'beis'
      ImageIndex = 7
      object GroupBox15: TuniGroupBox
        Left = 8
        Top = 8
        Width = 489
        Height = 141
        Caption = 'Cria'#231#227'o de Contas autom'#225'tico no Plano de Contas'
        TabOrder = 0
        object cContab_ContaNova: TuniDBCheckBox
          Left = 11
          Top = 25
          Width = 322
          Height = 55
          Caption = 'Criar numera'#231#227'o sequencial das contas novas dentro do grupo'
          DataField = 'Contab_ContaNova'
          DataSource = Config
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cContab_FilialCliente: TuniDBCheckBox
          Left = 11
          Top = 45
          Width = 322
          Height = 55
          Caption = 'Criar contas das filiais (Clientes)'
          DataField = 'Contab_FilialCliente'
          DataSource = Config
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cContab_FilialFornecedor: TuniDBCheckBox
          Left = 11
          Top = 65
          Width = 322
          Height = 55
          Caption = 'Criar contas das filiais (Fornecedores)'
          DataField = 'Contab_FilialFornecedor'
          DataSource = Config
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cContab_GrupoBanco: TuniDBEdit
          Left = 97
          Top = 107
          Width = 68
          Height = 55
          DataField = 'Contab_GrupoBanco'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 3
          FieldLabel = 'Grupo (Bancos)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_GrupoBanco: TuniDBLookupComboBox
          Left = 167
          Top = 107
          Width = 310
          Height = 55
          DataField = 'Contab_GrupoBanco'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dsPlanoContas
          TabOrder = 4
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
      object cParametrizacao_Contabil: TuniDBCheckBox
        Left = 555
        Top = 17
        Width = 245
        Height = 55
        Caption = 'Obrigar parametriza'#231#227'o contab'#237'l nos cadastros'
        DataField = 'Parametrizacao_Contabil'
        DataSource = Config
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object GroupBox34: TuniGroupBox
        Left = 8
        Top = 168
        Width = 817
        Height = 204
        Caption = 'Lan'#231'amentos de Encerramento'
        TabOrder = 2
        object cContab_HistoricoEncPrejuizo: TuniDBEdit
          Left = 156
          Top = 170
          Width = 69
          Height = 55
          DataField = 'Contab_HistoricoEncPrejuizo'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 7
          FieldLabel = 'Hist'#243'rico'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_HistoricoEncPrejuizo: TuniDBLookupComboBox
          Left = 227
          Top = 170
          Width = 579
          Height = 55
          DataField = 'Contab_HistoricoEncPrejuizo'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = dsHistoricos
          TabOrder = 8
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_ContaEncLucro: TuniDBLookupComboBox
          Left = 156
          Top = 84
          Width = 650
          Height = 55
          DataField = 'Contab_ContaEncLucro'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = dstContas
          TabOrder = 3
          FieldLabel = 'Conta (Lucro Acumulado)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_ContaEncPrejuizo: TuniDBLookupComboBox
          Left = 156
          Top = 147
          Width = 650
          Height = 55
          DataField = 'Contab_ContaEncPrejuizo'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = dstContas
          TabOrder = 6
          FieldLabel = 'Conta (Preju'#237'zo Acumulado)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_ContaResultado: TuniDBLookupComboBox
          Left = 156
          Top = 21
          Width = 650
          Height = 55
          DataField = 'Contab_ContaResultado'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = dstContas
          TabOrder = 0
          FieldLabel = 'Conta (Resultado)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cContab_HistoricoResultado: TuniDBEdit
          Left = 156
          Top = 44
          Width = 69
          Height = 55
          DataField = 'Contab_HistoricoResultado'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 1
          FieldLabel = 'Hist'#243'rico (Resultado)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_HistoricoResultado: TuniDBLookupComboBox
          Left = 227
          Top = 44
          Width = 579
          Height = 55
          DataField = 'Contab_HistoricoResultado'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = dsHistoricos
          TabOrder = 2
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cContab_HistoricoEncLucro: TuniDBEdit
          Left = 156
          Top = 107
          Width = 69
          Height = 55
          DataField = 'Contab_HistoricoEncLucro'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 4
          FieldLabel = 'Hist'#243'rico'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object clContab_HistoricoEncLucro: TuniDBLookupComboBox
          Left = 227
          Top = 107
          Width = 579
          Height = 55
          DataField = 'Contab_HistoricoEncLucro'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = dsHistoricos
          TabOrder = 5
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
    end
    object TabSheet13: TuniTabSheet
      Caption = 'Fi&nanceiros'
      ImageIndex = 7
      object PageControl2: TuniPageControl
        Left = 0
        Top = 0
        Width = 838
        Height = 517
        ActivePage = TabSheet6
        TabOrder = 0
        object TabSheet6: TuniTabSheet
          Caption = '&Lan'#231'amentos'
          ImageIndex = 1
          object GroupBox12: TuniGroupBox
            Left = 1
            Top = 1
            Width = 652
            Height = 159
            Caption = 
              'Classifica'#231#245'es Financeiras para (Juros/Multas/Descontos) dos lan' +
              #231'amentos do financeiro'
            TabOrder = 0
            object clClassificacao_DescontosRC: TuniDBLookupComboBox
              Left = 127
              Top = 17
              Width = 519
              Height = 55
              DataField = 'Classificacao_DescontosRC'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 0
              FieldLabel = 'Descontos Recebidos'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_DescontosPG: TuniDBLookupComboBox
              Left = 127
              Top = 40
              Width = 519
              Height = 55
              DataField = 'Classificacao_DescontosPG'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 1
              FieldLabel = 'Descontos Concedidos'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_MultaRC: TuniDBLookupComboBox
              Left = 127
              Top = 63
              Width = 519
              Height = 55
              DataField = 'Classificacao_MultaRC'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 2
              FieldLabel = 'Multas Recebidas'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_JurosPG: TuniDBLookupComboBox
              Left = 127
              Top = 132
              Width = 519
              Height = 55
              DataField = 'Classificacao_JurosPG'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 5
              FieldLabel = 'Juros Pagos'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_JurosRC: TuniDBLookupComboBox
              Left = 127
              Top = 109
              Width = 519
              Height = 55
              DataField = 'Classificacao_JurosRC'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 4
              FieldLabel = 'Juros Recebidos'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_MultaPG: TuniDBLookupComboBox
              Left = 127
              Top = 86
              Width = 519
              Height = 55
              DataField = 'Classificacao_MultaPG'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 3
              FieldLabel = 'Multas Pagas'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox13: TuniGroupBox
            Left = 1
            Top = 164
            Width = 652
            Height = 67
            Caption = 'Classifica'#231#245'es Financeiras de Recebimento para Transfer'#234'ncias'
            TabOrder = 1
            object clClassificacao_TransfBanco: TuniDBLookupComboBox
              Left = 127
              Top = 17
              Width = 519
              Height = 55
              DataField = 'Classificacao_TransfBanco'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 0
              FieldLabel = 'Transfer'#234'ncia Banc'#225'ria'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_TransfProcesso: TuniDBLookupComboBox
              Left = 127
              Top = 40
              Width = 519
              Height = 55
              DataField = 'Classificacao_TransfProcesso'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 1
              FieldLabel = 'Transfer'#234'ncia Processo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox14: TuniGroupBox
            Left = 1
            Top = 236
            Width = 652
            Height = 90
            Caption = 'Classifica'#231#245'es Financeiras para Fechamento de C'#226'mbio'
            TabOrder = 2
            object clClassificacao_CambioVarAtiva: TuniDBLookupComboBox
              Left = 127
              Top = 16
              Width = 519
              Height = 55
              DataField = 'Classificacao_CambioVarAtiva'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 1
              FieldLabel = 'Varia'#231#227'o (Ativa)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDocumento_Cambio: TuniDBLookupComboBox
              Left = 127
              Top = 62
              Width = 519
              Height = 55
              DataField = 'Documento_Cambio'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 3
              FieldLabel = 'Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_CambioVarPassiva: TuniDBLookupComboBox
              Left = 127
              Top = 39
              Width = 519
              Height = 55
              DataField = 'Classificacao_CambioVarPassiva'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 5
              FieldLabel = 'Varia'#231#227'o (Passiva)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox16: TuniGroupBox
            Left = 1
            Top = 330
            Width = 652
            Height = 68
            Caption = 'Classifica'#231#227'o Financeira para o Lan'#231'amento do Contrato de C'#226'mbio'
            TabOrder = 3
            object clContratoCambio_Classificacao: TuniDBLookupComboBox
              Left = 127
              Top = 16
              Width = 519
              Height = 55
              DataField = 'ContratoCambio_Classificacao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 1
              FieldLabel = 'Lan'#231'amento Financeiro'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clContratoCambio_Documento: TuniDBLookupComboBox
              Left = 127
              Top = 39
              Width = 519
              Height = 55
              DataField = 'ContratoCambio_Documento'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 3
              FieldLabel = 'Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
        end
        object TabSheet5: TuniTabSheet
          Caption = '&Duplicatas'
          object GroupBox4: TuniGroupBox
            Left = 1
            Top = 2
            Width = 827
            Height = 236
            Caption = 'Gera'#231#227'o das Duplicatas dos Impostos'
            TabOrder = 0
            object cDuplicata01_Dias: TuniDBEdit
              Left = 680
              Top = 47
              Width = 33
              Height = 55
              DataField = 'Duplicata01_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 2
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata02_Dias: TuniDBEdit
              Left = 680
              Top = 71
              Width = 33
              Height = 55
              DataField = 'Duplicata02_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 6
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata03_Dias: TuniDBEdit
              Left = 680
              Top = 94
              Width = 33
              Height = 55
              DataField = 'Duplicata03_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 10
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata04_Dias: TuniDBEdit
              Left = 680
              Top = 117
              Width = 33
              Height = 55
              DataField = 'Duplicata04_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 14
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata05_Dias: TuniDBEdit
              Left = 680
              Top = 140
              Width = 33
              Height = 55
              DataField = 'Duplicata05_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 18
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata06_Dias: TuniDBEdit
              Left = 680
              Top = 163
              Width = 33
              Height = 55
              DataField = 'Duplicata06_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 22
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata07_Dias: TuniDBEdit
              Left = 680
              Top = 186
              Width = 33
              Height = 55
              DataField = 'Duplicata07_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 26
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata08_Dias: TuniDBEdit
              Left = 680
              Top = 209
              Width = 33
              Height = 55
              DataField = 'Duplicata08_Dias'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 30
              FieldLabel = 'Vencto.(Dias)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cDuplicata01_Sub: TuniDBCheckBox
              Left = 715
              Top = 48
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata01_Sub'
              DataSource = Config
              TabOrder = 3
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata02_Sub: TuniDBCheckBox
              Left = 715
              Top = 72
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata02_Sub'
              DataSource = Config
              TabOrder = 7
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata03_Sub: TuniDBCheckBox
              Left = 715
              Top = 95
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata03_Sub'
              DataSource = Config
              TabOrder = 11
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata04_Sub: TuniDBCheckBox
              Left = 715
              Top = 118
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata04_Sub'
              DataSource = Config
              TabOrder = 15
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata05_Sub: TuniDBCheckBox
              Left = 715
              Top = 141
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata05_Sub'
              DataSource = Config
              TabOrder = 19
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata06_Sub: TuniDBCheckBox
              Left = 715
              Top = 164
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata06_Sub'
              DataSource = Config
              TabOrder = 23
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata07_Sub: TuniDBCheckBox
              Left = 715
              Top = 187
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata07_Sub'
              DataSource = Config
              TabOrder = 27
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cDuplicata08_Sub: TuniDBCheckBox
              Left = 715
              Top = 210
              Width = 110
              Height = 55
              Caption = 'M'#234's Subsequente'
              DataField = 'Duplicata08_Sub'
              DataSource = Config
              TabOrder = 31
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clDuplicata01: TuniDBLookupComboBox
              Left = 70
              Top = 48
              Width = 180
              Height = 55
              DataField = 'Duplicata01'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 0
              FieldLabel = 'Duplicata 1'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata02: TuniDBLookupComboBox
              Left = 70
              Top = 71
              Width = 180
              Height = 55
              DataField = 'Duplicata02'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 4
              FieldLabel = 'Duplicata 2'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata03: TuniDBLookupComboBox
              Left = 70
              Top = 94
              Width = 180
              Height = 55
              DataField = 'Duplicata03'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 8
              FieldLabel = 'Duplicata 3'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata06: TuniDBLookupComboBox
              Left = 70
              Top = 163
              Width = 180
              Height = 55
              DataField = 'Duplicata06'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 20
              FieldLabel = 'Duplicata 6'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata05: TuniDBLookupComboBox
              Left = 70
              Top = 140
              Width = 180
              Height = 55
              DataField = 'Duplicata05'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 16
              FieldLabel = 'Duplicata 5'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata04: TuniDBLookupComboBox
              Left = 70
              Top = 117
              Width = 180
              Height = 55
              DataField = 'Duplicata04'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 12
              FieldLabel = 'Duplicata 4'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata08: TuniDBLookupComboBox
              Left = 70
              Top = 209
              Width = 180
              Height = 55
              DataField = 'Duplicata08'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 28
              FieldLabel = 'Duplicata 8'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata07: TuniDBLookupComboBox
              Left = 70
              Top = 186
              Width = 180
              Height = 55
              DataField = 'Duplicata07'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoDuplicata
              TabOrder = 24
              FieldLabel = 'Duplicata 7'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cGerar_DuplImpostos: TuniDBCheckBox
              Left = 7
              Top = 23
              Width = 306
              Height = 55
              Caption = 'Gerar as duplicatas dos impostos na emiss'#227'o da nota fiscal.'
              DataField = 'Gerar_DuplImpostos'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 48
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object clDuplicata01_Class: TuniDBLookupComboBox
              Left = 323
              Top = 48
              Width = 279
              Height = 55
              DataField = 'Duplicata01_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 1
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata02_Class: TuniDBLookupComboBox
              Left = 323
              Top = 71
              Width = 279
              Height = 55
              DataField = 'Duplicata02_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 5
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata03_Class: TuniDBLookupComboBox
              Left = 323
              Top = 94
              Width = 279
              Height = 55
              DataField = 'Duplicata03_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 9
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata06_Class: TuniDBLookupComboBox
              Left = 323
              Top = 163
              Width = 279
              Height = 55
              DataField = 'Duplicata06_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 21
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata05_Class: TuniDBLookupComboBox
              Left = 323
              Top = 140
              Width = 279
              Height = 55
              DataField = 'Duplicata05_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 17
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata04_Class: TuniDBLookupComboBox
              Left = 323
              Top = 117
              Width = 279
              Height = 55
              DataField = 'Duplicata04_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 13
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata08_Class: TuniDBLookupComboBox
              Left = 323
              Top = 209
              Width = 279
              Height = 55
              DataField = 'Duplicata08_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 29
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clDuplicata07_Class: TuniDBLookupComboBox
              Left = 323
              Top = 186
              Width = 279
              Height = 55
              DataField = 'Duplicata07_Class'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dstClassificacaoRec
              TabOrder = 25
              FieldLabel = 'Classifica'#231#227'o'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object cDia_Util: TuniDBRadioGroup
            Left = 1
            Top = 260
            Width = 323
            Height = 55
            Caption = 'Vencimentos em final de semana?'
            Columns = 3
            DataField = 'Dia_Util'
            DataSource = Config
            Items.Strings = (
              'Antecipar'
              'Avan'#231'ar'
              'Nenhum')
            TabOrder = 1
            Values.Strings = (
              '-'
              '+'
              'N')
          end
          object cDiferenca_Duplicata: TuniDBRadioGroup
            Left = 1
            Top = 320
            Width = 323
            Height = 55
            Caption = 'Diferen'#231'a de arredondamento'
            Columns = 2
            DataField = 'Diferenca_Duplicata'
            DataSource = Config
            Items.Strings = (
              'Na Primeira Duplicata'
              'Na '#250'ltima Duplicata')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1')
          end
          object cSequencial_Duplicata: TuniDBRadioGroup
            Left = 1
            Top = 380
            Width = 323
            Height = 55
            Caption = 'Numero da Duplicata'
            Columns = 2
            DataField = 'Sequencial_Duplicata'
            DataSource = Config
            Items.Strings = (
              'Sequencial de n'#250'mero'
              'Sequencial de letra')
            TabOrder = 3
            Values.Strings = (
              '0'
              '1')
          end
        end
        object TabSheet9: TuniTabSheet
          Caption = '&Diversos'
          ImageIndex = 3
          object cHora_Solicitacao: TuniDBEdit
            Left = 215
            Top = 3
            Width = 88
            Height = 55
            DataField = 'Hora_Solicitacao'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 2
            FieldLabel = 'Hora limite para solicita'#231#227'o de numer'#225'rios'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object GroupBox20: TuniGroupBox
            Left = 5
            Top = 29
            Width = 820
            Height = 87
            Caption = 'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es a Representantes)'
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 0
            object clTipo_DocumentoPagamento: TuniDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 55
              DataField = 'Tipo_DocumentoPagamento'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 2
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clCentro_CustoPagamento: TuniDBLookupComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 55
              DataField = 'Centro_CustoPagamento'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo; Descricao'
              ListFieldIndex = 1
              ListSource = dsCentroCusto
              TabOrder = 1
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_Pagamento: TuniDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 55
              DataField = 'Classificacao_Pagamento'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 0
              FieldLabel = 'Classifica'#231#227'o Financeira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox25: TuniGroupBox
            Left = 5
            Top = 301
            Width = 820
            Height = 133
            Caption = 'Informa'#231#245'es default para empr'#233'stimos banc'#225'rios (Capital de Giro)'
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 1
            object clEmprestimoBancario_CentroCusto: TuniDBLookupComboBox
              Left = 204
              Top = 84
              Width = 610
              Height = 55
              DataField = 'EmprestimoBancario_CentroCusto'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsCentroCusto
              TabOrder = 3
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clEmprestimoBancario_ClassificacaoR: TuniDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 55
              DataField = 'EmprestimoBancario_ClassificacaoR'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 0
              FieldLabel = 'Classifica'#231#227'o Financeira (Recebimento)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clEmprestimoBancario_TipoDocumento: TuniDBLookupComboBox
              Left = 204
              Top = 107
              Width = 610
              Height = 55
              DataField = 'EmprestimoBancario_TipoDocumento'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 4
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clEmprestimoBancario_ClassificacaoP: TuniDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 55
              DataField = 'EmprestimoBancario_ClassificacaoP'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 2
              FieldLabel = 'Classifica'#231#227'o Financeira (Pagamento)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cEmprestimoBancario_FormaRecebimento: TuniDBComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 55
              DataField = 'EmprestimoBancario_FormaRecebimento'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
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
            end
          end
          object cCalculo_Comissao: TuniDBRadioGroup
            Left = 5
            Top = 440
            Width = 471
            Height = 55
            Caption = 'Calcular comiss'#227'o de representantes'
            Columns = 3
            DataField = 'Calculo_Comissao'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            Items.Strings = (
              'Total dos Produtos'
              'Total dos Produtos + IPI'
              'Total da Nota Fiscal')
            TabOrder = 4
            Values.Strings = (
              'PRODUTO'
              'PRODUTO+IPI'
              'TOTAL NOTA')
          end
          object GroupBox31: TuniGroupBox
            Left = 5
            Top = 120
            Width = 820
            Height = 87
            Caption = 
              'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es a Atendentes de Call ' +
              'Center)'
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 5
            object clTipo_DocumentoPagamentoTelevendas: TuniDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 55
              DataField = 'Tipo_DocumentoPagamentoTelevendas'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 2
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clCentro_CustoPagamentoTelevendas: TuniDBLookupComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 55
              DataField = 'Centro_CustoPagamentoTelevendas'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo; Descricao'
              ListFieldIndex = 1
              ListSource = dsCentroCusto
              TabOrder = 1
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_PagamentoTelevendas: TuniDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 55
              DataField = 'Classificacao_PagamentoTelevendas'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 0
              FieldLabel = 'Classifica'#231#227'o Financeira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
          object GroupBox32: TuniGroupBox
            Left = 5
            Top = 211
            Width = 820
            Height = 87
            Caption = 'Lan'#231'amento Financeiro (Pagamento Comiss'#245'es - Outras)'
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 6
            object clTipo_DocumentoPagamentoOutros: TuniDBLookupComboBox
              Left = 204
              Top = 61
              Width = 610
              Height = 55
              DataField = 'Tipo_DocumentoPagamentoOutros'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsTiposDocumentos
              TabOrder = 2
              FieldLabel = 'Tipo de Documento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clCentro_CustoPagamentoOutros: TuniDBLookupComboBox
              Left = 204
              Top = 38
              Width = 610
              Height = 55
              DataField = 'Centro_CustoPagamentoOutros'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo; Descricao'
              ListFieldIndex = 1
              ListSource = dsCentroCusto
              TabOrder = 1
              FieldLabel = 'Centro de Custo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clClassificacao_PagamentoOutros: TuniDBLookupComboBox
              Left = 204
              Top = 15
              Width = 610
              Height = 55
              DataField = 'Classificacao_PagamentoOutros'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 0
              FieldLabel = 'Classifica'#231#227'o Financeira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
        end
        object TabSheet15: TuniTabSheet
          Caption = '&Boleto Banc'#225'rio'
          ImageIndex = 3
          object cBoleto_Contato: TuniDBCheckBox
            Left = 8
            Top = 197
            Width = 195
            Height = 55
            Caption = 'Imprimir dados de contato no boleto.'
            DataField = 'Boleto_Contato'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cBoleto_PercentualMulta: TuniDBEdit
            Left = 205
            Top = 29
            Width = 66
            Height = 55
            DataField = 'Boleto_PercentualMulta'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 1
            FieldLabel = 'Percentual de multa ap'#243's o vencimento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cBoleto_PercentualJuros: TuniDBEdit
            Left = 205
            Top = 52
            Width = 66
            Height = 55
            DataField = 'Boleto_PercentualJuros'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 2
            FieldLabel = 'Percentual de Juros por dia de atraso'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cBoleto_Instrucoes: TuniDBEdit
            Left = 273
            Top = 75
            Width = 554
            Height = 55
            DataField = 'Boleto_Instrucoes'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 4
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cBoleto_ProtestoDias: TuniDBEdit
            Left = 205
            Top = 121
            Width = 37
            Height = 55
            DataField = 'Boleto_ProtestoDias'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 5
            FieldLabel = 'Protestar ap'#243's quantos dias'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cBoleto_EspecieDOC: TuniDBComboBox
            Left = 205
            Top = 144
            Width = 237
            Height = 55
            DataField = 'Boleto_EspecieDOC'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
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
            TabOrder = 6
            FieldLabel = 'Esp'#233'cie Documento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cBoleto_LocalPagamento: TuniDBEdit
            Left = 205
            Top = 6
            Width = 622
            Height = 55
            DataField = 'Boleto_LocalPagamento'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 0
            FieldLabel = 'Local de Pagamento'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cBoleto_InstrucaoCod: TuniDBEdit
            Left = 205
            Top = 75
            Width = 66
            Height = 55
            DataField = 'Boleto_InstrucaoCod'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 3
            FieldLabel = 'Instru'#231#245'es 1 (C'#243'digo/Descri'#231#227'o)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
          object cBoleto_InstrucaoCod2: TuniDBEdit
            Left = 205
            Top = 98
            Width = 66
            Height = 55
            DataField = 'Boleto_InstrucaoCod2'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 15
            FieldLabel = 'Instru'#231#245'es 2 (C'#243'digo)'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
      end
    end
    object TabSheet3: TuniTabSheet
      Caption = 'P&rocessos'
      ImageIndex = 6
      object PageControl3: TuniPageControl
        Left = 0
        Top = 0
        Width = 838
        Height = 457
        ActivePage = TabSheet17
        TabOrder = 0
        object TabSheet19: TuniTabSheet
          Caption = '&Diversos'
          object cProcesso_Numero: TuniDBRadioGroup
            Left = 4
            Top = 1
            Width = 413
            Height = 55
            Caption = 'Gera'#231#227'o do N'#250'mero do Processo/PO Autom'#225'tico'
            DataField = 'Processo_Numero'
            DataSource = Config
            Items.Strings = (
              'M'#225'scara+N'#225'mero'
              'M'#225'scara+N'#250'mero+Ano'
              'M'#225'scara+Ano+N'#250'mero'
              'N'#250'mero+Ano+M'#225'scara'
              'Ano+N'#250'mero+M'#225'scara')
            TabOrder = 0
            Values.Strings = (
              'MN'
              'MNA'
              'MAN'
              'NAM'
              'ANM')
          end
          object cProcesso_DigitosAno: TuniDBRadioGroup
            Left = 276
            Top = 33
            Width = 109
            Height = 55
            Caption = 'Digitos do Ano'
            DataField = 'Processo_DigitosAno'
            DataSource = Config
            Items.Strings = (
              '2 Digitos'
              '4 Digitos')
            TabOrder = 1
            Values.Strings = (
              '2'
              '4')
          end
          object cBloquear_ProcessoFechado: TuniDBCheckBox
            Left = 5
            Top = 162
            Width = 319
            Height = 55
            Caption = 'Bloquear a movimenta'#231#227'o financeira para processos fechados.'
            DataField = 'Bloquear_ProcessoFechado'
            DataSource = Config
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cProcesso_ObrigarFatura: TuniDBCheckBox
            Left = 5
            Top = 186
            Width = 264
            Height = 55
            Caption = 'Obrigar campos da fatura no cadastro do processo.'
            DataField = 'Processo_ObrigarFatura'
            DataSource = Config
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cBloquear_ItemContrato: TuniDBCheckBox
            Left = 5
            Top = 210
            Width = 356
            Height = 55
            Caption = 
              'N'#227'o bloquear item de contrato de c'#226'mbio com valor maior que o sa' +
              'ldo.'
            DataField = 'Bloquear_ItemContrato'
            DataSource = Config
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
          end
          object cValor_DI: TuniDBEdit
            Left = 83
            Top = 246
            Width = 121
            Height = 55
            DataField = 'Valor_DI'
            DataSource = Config
            Font.Charset = DEFAULT_CHARSET
            TabOrder = 6
            FieldLabel = 'Valor da DI'
            FieldLabelWidth = 120
            FieldLabelAlign = laTop
            FieldLabelSeparator = ' '
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
            BorderStyle = ubsDefault
          end
        end
        object TabSheet17: TuniTabSheet
          Caption = '&Importa'#231#227'o de DI'
          ImageIndex = 1
          object GroupBox8: TuniGroupBox
            Left = 3
            Top = 1
            Width = 825
            Height = 415
            Caption = 'Importa'#231#227'o de DI'#39's do SISCOMEX'
            TabOrder = 0
            object Label1: TuniLabel
              Left = 7
              Top = 73
              Width = 491
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Informe um * neste campo para pegar a primeira palavra como o c'#243 +
                'digo do fabricante.'
              Color = 16744448
              Font.Charset = DEFAULT_CHARSET
              ParentColor = False
            end
            object clMoeda_Importacao: TuniDBLookupComboBox
              Left = 301
              Top = 15
              Width = 510
              Height = 55
              DataField = 'Moeda_Importacao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Nome;Simbolo'
              ListFieldIndex = 1
              ListSource = dsMoedas
              TabOrder = 1
              FieldLabel = 'Moeda padr'#227'o p/convers'#227'o p/DI'#39's com mais de uma moeda'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clRamo_Atividade: TuniDBLookupComboBox
              Left = 301
              Top = 38
              Width = 510
              Height = 55
              DataField = 'Ramo_Atividade'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsRamoAtividade
              TabOrder = 2
              FieldLabel = 'Ramo de atividade padr'#227'o para fornecedores do exterior'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cAdicao_PesoLiquido: TuniDBRadioGroup
              Left = 8
              Top = 168
              Width = 297
              Height = 55
              Caption = 'Peso Unit'#225'rio Produto'
              DataField = 'Adicao_PesoLiquido'
              DataSource = Config
              Items.Strings = (
                'Ratear peso l'#237'quido da Adi'#231#227'o'
                'Utilizar peso do cadastro de Produtos'
                'Utilizar peso dos itens da Fatura')
              TabOrder = 7
              Values.Strings = (
                '0'
                '1'
                '2')
            end
            object cSISCOMEX_CodigoProduto: TuniDBCheckBox
              Left = 9
              Top = 275
              Width = 392
              Height = 55
              Caption = 
                'S'#243' importar produtos do SISCOMEX para descri'#231#245'es com o c'#243'digo do' +
                ' sistema.'
              DataField = 'SISCOMEX_CodigoProduto'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 8
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cSISCOMEX_MascaraReferencia: TuniDBEdit
              Left = 301
              Top = 87
              Width = 198
              Height = 55
              DataField = 'SISCOMEX_MascaraReferencia'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 3
              FieldLabel = 'M'#225'scara p/importa'#231#227'o c'#243'd.refer'#234'ncia na descri'#231#227'o do prod.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cProcesso_ImportarFechado: TuniDBCheckBox
              Left = 9
              Top = 296
              Width = 252
              Height = 55
              Caption = 'Importar processos com notas fiscais j'#225' emitidas.'
              DataField = 'Processo_ImportarFechado'
              DataSource = Config
              TabOrder = 9
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cAFRMM_Calcular: TuniDBCheckBox
              Left = 9
              Top = 318
              Width = 336
              Height = 55
              Caption = 'Calcular valor de AFRMM e gerar lan'#231'amento no financeiro.'
              DataField = 'AFRMM_Calcular'
              DataSource = Config
              TabOrder = 10
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              OnClick = cAFRMM_CalcularClick
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
            end
            object cAFRMM_Tarifa: TuniDBEdit
              Left = 161
              Top = 359
              Width = 104
              Height = 55
              DataField = 'AFRMM_Tarifa'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 12
              FieldLabel = 'Tarifa'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cAFRMM_Taxa: TuniDBEdit
              Left = 161
              Top = 382
              Width = 104
              Height = 55
              DataField = 'AFRMM_Taxa'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 13
              FieldLabel = 'Taxa Utiliza'#231#227'o Mercante'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cAFRMM_Percentual: TuniDBEdit
              Left = 161
              Top = 336
              Width = 104
              Height = 55
              DataField = 'AFRMM_Percentual'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 11
              FieldLabel = 'Percentual p/C'#225'lculo'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cSISCOMEX_MascaraPosicao: TuniDBRadioGroup
              Left = 503
              Top = 68
              Width = 309
              Height = 55
              Caption = 'Posi'#231#227'o do c'#243'digo de refer'#234'ncia na descri'#231#227'o'
              Columns = 2
              DataField = 'SISCOMEX_MascaraPosicao'
              DataSource = Config
              Items.Strings = (
                'No inicio da descri'#231#227'o'
                'No final da descri'#231#227'o')
              TabOrder = 4
              Values.Strings = (
                '1'
                '2')
            end
            object cSISCOMEX_MascaraPO: TuniDBEdit
              Left = 301
              Top = 110
              Width = 120
              Height = 55
              DataField = 'SISCOMEX_MascaraPO'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 5
              FieldLabel = 'M'#225'scara p/importa'#231#227'o do n'#186' do PO na descri'#231#227'o do prod.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cSISCOMEX_MascaraITEM: TuniDBEdit
              Left = 301
              Top = 133
              Width = 120
              Height = 55
              DataField = 'SISCOMEX_MascaraITEM'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 6
              FieldLabel = 'M'#225'scara p/importa'#231#227'o do n'#186' do ITEM na descri'#231#227'o do prod.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cSISCOMEX_MascaraPOFech: TuniDBEdit
              Left = 423
              Top = 110
              Width = 76
              Height = 55
              DataField = 'SISCOMEX_MascaraPOFech'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 21
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cSISCOMEX_MascaraITEMFech: TuniDBEdit
              Left = 423
              Top = 133
              Width = 76
              Height = 55
              DataField = 'SISCOMEX_MascaraITEMFech'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 22
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
        end
        object TabSheet18: TuniTabSheet
          Caption = '&Fechamento de Processos'
          object GroupBox21: TuniGroupBox
            Left = 4
            Top = 1
            Width = 820
            Height = 296
            Caption = 'Par'#226'metros para Fechamento de Processo'
            TabOrder = 0
            object clProcesso_FechamentoCSLL: TuniDBLookupComboBox
              Left = 144
              Top = 15
              Width = 449
              Height = 55
              DataField = 'Processo_FechamentoCSLL'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao;Valor'
              ListFieldIndex = 1
              ListSource = dsImpostos
              TabOrder = 1
              FieldLabel = 'CSLL'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clProcesso_FechamentoIRPJ: TuniDBLookupComboBox
              Left = 144
              Top = 38
              Width = 449
              Height = 55
              DataField = 'Processo_FechamentoIRPJ'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao;Valor'
              ListFieldIndex = 1
              ListSource = dsImpostos
              TabOrder = 2
              FieldLabel = 'IRPJ'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cProcesso_FechamentoICMSPagar: TuniDBEdit
              Left = 144
              Top = 61
              Width = 67
              Height = 55
              DataField = 'Processo_FechamentoICMSPagar'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 3
              FieldLabel = 'Percentual ICMS (Pagar)'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cProcesso_FechamentoFDE: TuniDBEdit
              Left = 144
              Top = 84
              Width = 67
              Height = 55
              DataField = 'Processo_FechamentoFDE'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 4
              FieldLabel = 'Percentual FDE'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cProcesso_FechamentoAssAduaneira: TuniDBEdit
              Left = 328
              Top = 84
              Width = 67
              Height = 55
              DataField = 'Processo_FechamentoAssAduaneira'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 5
              FieldLabel = 'Assessoria Aduaneira'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clProcesso_FechamentoClassPgtoCliente: TuniDBLookupComboBox
              Left = 144
              Top = 107
              Width = 449
              Height = 55
              DataField = 'Processo_FechamentoClassPgtoCliente'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 6
              FieldLabel = 'Classifica'#231#227'o Pgto. Cliente'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clProcesso_FechamentoClassCorrecao: TuniDBLookupComboBox
              Left = 144
              Top = 153
              Width = 449
              Height = 55
              DataField = 'Processo_FechamentoClassCorrecao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsClassificacaoFinanceira
              TabOrder = 8
              FieldLabel = 'Classifica'#231#227'o Corr.Financ.'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cProcesso_FechamentoCorrecao: TuniDBEdit
              Left = 144
              Top = 130
              Width = 89
              Height = 55
              DataField = 'Processo_FechamentoCorrecao'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 7
              FieldLabel = 'Percentual Corre'#231#227'o Dia'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object cProcesso_FechamentoObservacao: TuniDBRadioGroup
              Left = 603
              Top = 10
              Width = 210
              Height = 55
              Caption = 'Observa'#231#227'o das Despesas'
              DataField = 'Processo_FechamentoObservacao'
              DataSource = Config
              Items.Strings = (
                'Copiar a descri'#231#227'o da Classifica'#231#227'o'
                'Observa'#231#227'o do Financeiro')
              TabOrder = 16
              Values.Strings = (
                '0'
                '1')
            end
            object cProcesso_FechamentoObsTexto: TuniDBMemo
              Left = 144
              Top = 176
              Width = 665
              Height = 55
              DataField = 'Processo_FechamentoObsTexto'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              TabOrder = 18
              FieldLabel = 'Observa'#231#227'o para o Fechamento'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
            object clProcesso_FechamentoDRE: TuniDBLookupComboBox
              Left = 144
              Top = 267
              Width = 449
              Height = 55
              DataField = 'Processo_FechamentoDRE'
              DataSource = Config
              Font.Charset = DEFAULT_CHARSET
              KeyField = 'Codigo'
              ListField = 'Codigo;Descricao'
              ListFieldIndex = 1
              ListSource = dsDRE
              TabOrder = 20
              FieldLabel = 'C'#243'digo da DRE'
              FieldLabelWidth = 120
              FieldLabelAlign = laTop
              FieldLabelSeparator = ' '
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
              BorderStyle = ubsDefault
            end
          end
        end
      end
    end
    object TabSheet8: TuniTabSheet
      Caption = '&Checagens'
      ImageIndex = 8
      object cAviso_VencimentoContrato: TuniDBEdit
        Left = 351
        Top = 5
        Width = 50
        Height = 55
        DataField = 'Aviso_VencimentoContrato'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 1
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cAviso_VencimentoRetorno: TuniDBEdit
        Left = 351
        Top = 74
        Width = 50
        Height = 55
        DataField = 'Aviso_VencimentoRetorno'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 3
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object GroupBox22: TuniGroupBox
        Left = 6
        Top = 144
        Width = 597
        Height = 116
        Caption = 'Entrega de Arquivos Fiscais'
        TabOrder = 4
        object cVencimento_FISCALDias: TuniDBEdit
          Left = 541
          Top = 19
          Width = 50
          Height = 55
          DataField = 'Vencimento_FISCALDias'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 4
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_PISCOFINSDias: TuniDBEdit
          Left = 541
          Top = 42
          Width = 50
          Height = 55
          DataField = 'Vencimento_PISCOFINSDias'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 5
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_CONTABILDias: TuniDBEdit
          Left = 541
          Top = 65
          Width = 50
          Height = 55
          DataField = 'Vencimento_CONTABILDias'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 6
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_SINTEGRADias: TuniDBEdit
          Left = 541
          Top = 88
          Width = 50
          Height = 55
          DataField = 'Vencimento_SINTEGRADias'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 7
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_FISCAL: TuniDBEdit
          Left = 205
          Top = 19
          Width = 50
          Height = 55
          DataField = 'Vencimento_FISCAL'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 8
          FieldLabel = 'Dia Vencimento SPED FISCAL'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_PISCOFINS: TuniDBEdit
          Left = 205
          Top = 42
          Width = 50
          Height = 55
          DataField = 'Vencimento_PISCOFINS'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 9
          FieldLabel = 'Dia Vencimento SPED PIS/COFINS'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_CONTABIL: TuniDBEdit
          Left = 205
          Top = 65
          Width = 50
          Height = 55
          DataField = 'Vencimento_CONTABIL'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 10
          FieldLabel = 'Dia Vencimento SPED CONTABIL'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_SINTEGRA: TuniDBEdit
          Left = 205
          Top = 88
          Width = 50
          Height = 55
          DataField = 'Vencimento_SINTEGRA'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 11
          FieldLabel = 'Dia Vencimento SINTEGRA'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cVencimento_CONTABILMes: TuniDBEdit
          Left = 343
          Top = 65
          Width = 50
          Height = 55
          DataField = 'Vencimento_CONTABILMes'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          TabOrder = 14
          FieldLabel = 'M'#234's Espec'#237'fico'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
      object cAviso_VencimentoRadar: TuniDBEdit
        Left = 351
        Top = 28
        Width = 50
        Height = 55
        DataField = 'Aviso_VencimentoRadar'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 6
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cAviso_VencimentoVinculacao: TuniDBEdit
        Left = 351
        Top = 51
        Width = 50
        Height = 55
        DataField = 'Aviso_VencimentoVinculacao'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 8
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cAviso_MovimentoMinimo: TuniDBEdit
        Left = 351
        Top = 97
        Width = 50
        Height = 55
        DataField = 'Aviso_MovimentoMinimo'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 10
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cAviso_MovimentoMaximo: TuniDBEdit
        Left = 457
        Top = 97
        Width = 50
        Height = 55
        DataField = 'Aviso_MovimentoMaximo'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 11
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
    end
    object TabSheet10: TuniTabSheet
      Caption = '&Banco de Dados'
      ImageIndex = 9
      object GroupBox23: TuniGroupBox
        Left = 19
        Top = 32
        Width = 218
        Height = 63
        Caption = 'Tabelas Compartilhadas'
        TabOrder = 0
        object cCompartilhar_Classificacao: TuniDBCheckBox
          Left = 7
          Top = 18
          Width = 200
          Height = 55
          Caption = 'Cadastro de Classifica'#231#227'o Financeira'
          DataField = 'Compartilhar_Classificacao'
          DataSource = Config
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
        object cCompartilhar_Bancos: TuniDBCheckBox
          Left = 7
          Top = 38
          Width = 200
          Height = 55
          Caption = 'Cadastro de Bancos'
          DataField = 'Compartilhar_Bancos'
          DataSource = Config
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
        end
      end
      object cPrazo_Log: TuniDBEdit
        Left = 243
        Top = 110
        Width = 37
        Height = 55
        DataField = 'Prazo_Log'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 2
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
        BorderStyle = ubsDefault
      end
      object cAtualiza_Anterior: TUniDBDateTimePicker
        Left = 243
        Top = 133
        Width = 121
        Height = 55
        DataField = 'Atualiza_Anterior'
        DataSource = Config
        Enabled = False
        TabOrder = 5
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object cAtualiza_Data: TUniDBDateTimePicker
        Left = 243
        Top = 156
        Width = 121
        Height = 55
        DataField = 'Atualiza_Data'
        DataSource = Config
        TabOrder = 7
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
      object cXMLTerceiros_Codigo: TuniDBCheckBox
        Left = 23
        Top = 240
        Width = 462
        Height = 55
        Caption = 
          'Verificar c'#243'digo do produto dentro da descri'#231#227'o na importa'#231#227'o do' +
          ' XML da NF-e de terceiros.'
        DataField = 'XMLTerceiros_Codigo'
        DataSource = Config
        Font.Charset = DEFAULT_CHARSET
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
    end
    object TabSheet14: TuniTabSheet
      Caption = '&Televendas'
      ImageIndex = 10
      object GroupBox28: TuniGroupBox
        Left = 8
        Top = 8
        Width = 825
        Height = 163
        Caption = 'Dados de Faturamento para pedidos de Televendas'
        TabOrder = 0
        object clTelevendas_Transportador: TuniDBLookupComboBox
          Left = 208
          Top = 19
          Width = 609
          Height = 55
          DataField = 'Televendas_Transportador'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome;CNPJ'
          ListFieldIndex = 1
          ListSource = dstTransportadores
          TabOrder = 1
          FieldLabel = 'Transportador'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cTipoNota: TuniDBLookupComboBox
          Left = 208
          Top = 65
          Width = 609
          Height = 55
          DataField = 'Televendas_TipoNota'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Descricao; Codigo'
          ListSource = dsTipoNota
          TabOrder = 3
          FieldLabel = 'Tipo Nota'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cModalidadeFrete: TuniDBComboBox
          Left = 208
          Top = 42
          Width = 609
          Height = 55
          Style = csDropDownList
          DataField = 'Televendas_ModalidadeFrete'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
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
        end
        object RxDBLookupCombo1: TuniDBLookupComboBox
          Left = 208
          Top = 88
          Width = 609
          Height = 55
          DataField = 'Televendas_NaturezaDentro'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao_NF'
          ListFieldIndex = 1
          ListSource = dstNaturezaDentro
          TabOrder = 4
          FieldLabel = 'Natureza Opera'#231#227'o (Dentro do Estado)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object RxDBLookupCombo2: TuniDBLookupComboBox
          Left = 208
          Top = 111
          Width = 609
          Height = 55
          DataField = 'Televendas_NaturezaFora'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          Font.Pitch = fpFixed
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao_NF'
          ListFieldIndex = 1
          ListSource = dstNaturezaFora
          TabOrder = 5
          FieldLabel = 'Natureza Opera'#231#227'o (Fora do Estado)'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
        object cModalidade: TuniDBLookupComboBox
          Left = 208
          Top = 134
          Width = 609
          Height = 55
          DataField = 'Televendas_ModalidadePgto'
          DataSource = Config
          Font.Charset = DEFAULT_CHARSET
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = dsModalidadesPgto
          TabOrder = 11
          FieldLabel = 'Modalidade Pgto'
          FieldLabelWidth = 120
          FieldLabelAlign = laTop
          FieldLabelSeparator = ' '
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
          BorderStyle = ubsDefault
        end
      end
      object cTelevendas_EstoqueTerceiros: TuniDBCheckBox
        Left = 13
        Top = 194
        Width = 481
        Height = 55
        Caption = 
          'Computar o estoque em terceiros como estoque dispon'#237'vel para os ' +
          'pedidos do Televendas.'
        DataField = 'Televendas_EstoqueTerceiros'
        DataSource = Config
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        FieldLabelWidth = 120
        FieldLabelAlign = laTop
        FieldLabelSeparator = ' '
      end
    end
    object TabSheet16: TuniTabSheet
      Caption = '&Arquivo de Inicializa'#231#227'o'
      ImageIndex = 11
      object cmIni: TuniMemo
        Left = 0
        Top = 0
        Width = 839
        Height = 544
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Lines.Strings = (
          '[SERVIDOR]'
          'Autenticacao=auServer'
          'Autenticacao2=auWindows'
          'Nome2=LAPTOP-EDER'
          'Nome=SERVIDOR02'
          'Nome_DataCenter=54.207.86.223, 1433'
          'Nome_Novo=177.99.238.114'
          ''
          '[BANCO DE DADOS]'
          'Banco_Cadastro=Cybersoft_Cadastros'
          'usuario=sa'
          'chc1=sa'
          'chc=cybersoft@123'
          'Backup_Ativo=0'
          'DataCenter=0'
          ''
          '[ATUALIZA]'
          'Pasta=c:\sistemas\faturamento\codigo_fonte\atualiza'
          'UltimaAtual=03/04/2013 18:23:45'
          'MostrarAtual=0'
          'Pasta_Atualiza=c:\sistemas\faturamento\codigo_fonte\atualiza'
          'IP_Suporte=179.185.199.137'
          ''
          '[ABERTURA]'
          'Skin1=C:\SKIN\skin\Skin_ded10.skn'
          'Skin2=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\Skin_Ded12.skn'
          
            'Skin3=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\Cinza_Samui-SAM' +
            'UI.skn'
          'Skin4=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\iTunes.skn'
          'Skin=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\Skin_ded10.skn'
          
            'Skin6=C:\Sistemas\Faturamento\Codigo_Fonte\Skins\chumbo_Tiger2-T' +
            'GRPS.skn'
          ''
          'Empresa=50'
          'Usuario=ADMINISTRADOR'
          'senha=adm'
          'senha2=OPERACIONAL01')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object tClassificacaoRec: TFDQuery
    Connection = Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ClassificacaoFinanceira WHERE(Tipo = '#39'R'#39')'
      ''
      ''
      '')
    Left = 388
    Top = 9
    object tClassificacaoRecCodigo: TStringField
      FieldName = 'Codigo'
      Size = 15
    end
    object tClassificacaoRecDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tClassificacaoRecTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
  end
  object dstClassificacaoRec: TDataSource
    DataSet = tClassificacaoRec
    Left = 418
    Top = 9
  end
  object tTransportadores: TFDQuery
    Connection = Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo, Nome, CNPJ'
      'FROM Fornecedores '
      '')
    Left = 452
    Top = 9
    object tTransportadoresCodigo: TIntegerField
      DisplayWidth = 6
      FieldName = 'Codigo'
    end
    object tTransportadoresNome: TStringField
      DisplayWidth = 50
      FieldName = 'Nome'
      Size = 60
    end
    object tTransportadoresCNPJ: TStringField
      DisplayWidth = 10
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
  end
  object dstTransportadores: TDataSource
    DataSet = tTransportadores
    Left = 482
    Top = 9
  end
  object tNaturezaDentro: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT Codigo, Descricao_NF'
      'FROM Natureza')
    Left = 516
    Top = 9
    object tNaturezaDentroCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object tNaturezaDentroDescricao_NF: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object dstNaturezaDentro: TDataSource
    DataSet = tNaturezaDentro
    Left = 546
    Top = 9
  end
  object tNaturezaFora: TFDQuery
    Connection = Banco
    SQL.Strings = (
      'SELECT Codigo, Descricao_NF'
      'FROM Natureza')
    Left = 580
    Top = 9
    object tNaturezaForaCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object tNaturezaForaDescricao_NF: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object dstNaturezaFora: TDataSource
    DataSet = tNaturezaFora
    Left = 610
    Top = 8
  end
  object tContas: TFDQuery
    Connection = Banco_Contabilidade
    SQL.Strings = (
      'SELECT Conta'
      '      ,Codigo'
      '      ,Descricao'
      'FROM  PlanoContas'
      'WHERE ISNULL(Sintetica, 0) = 0'
      'ORDER BY Conta, Descricao')
    Left = 652
    Top = 9
  end
  object dstContas: TDataSource
    DataSet = tContas
    Left = 682
    Top = 8
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
    Left = 32
    Top = 238
  end
  object dsConfig: TDataSource
    DataSet = Config
    Left = 106
    Top = 238
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




