object fEstoque_Imobilizado: TfEstoque_Imobilizado
  Left = 0
  Top = 0
  Width = 1102
  Height = 844
  OnCreate = uniFrameCreate
  Font.Name = 'MS Sans Serif'
  TabOrder = 0
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1102
    Height = 809
    Hint = ''
    ActivePage = UniTabSheet1
    Plain = True
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
        ' '#39'PastaInterna'#39';'#13#10'}')
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Lista'
      object gIndust: TUniDBGrid
        Left = 0
        Top = 27
        Width = 1094
        Height = 754
        Hint = ''
        Margins.Bottom = 10
        ShowHint = True
        ParentShowHint = False
        TitleFont.Style = [fsBold]
        DataSource = dsImobilizado
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgTabs, dgCancelOnExit]
        ReadOnly = True
        WebOptions.PageSize = 50
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        BorderStyle = ubsNone
        Align = alClient
        Font.Name = 'MS Sans Serif'
        ParentFont = False
        TabOrder = 0
        Columns = <
          item
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Style = [fsBold]
            Width = 499
            Font.Name = 'MS Sans Serif'
            ReadOnly = True
          end
          item
            FieldName = 'Codigo_Imobilizado'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Imobilizado'
            Title.Font.Style = [fsBold]
            Width = 151
            Font.Name = 'MS Sans Serif'
            ReadOnly = True
          end
          item
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Nota'
            Title.Font.Style = [fsBold]
            Width = 76
            Font.Name = 'MS Sans Serif'
            ReadOnly = True
          end
          item
            FieldName = 'Data_Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Data Nota'
            Title.Font.Style = [fsBold]
            Width = 75
            Font.Name = 'MS Sans Serif'
            Alignment = taCenter
            ReadOnly = True
          end
          item
            FieldName = 'Tipo_MovDesc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Mov'
            Title.Font.Style = [fsBold]
            Width = 241
            Font.Name = 'MS Sans Serif'
            ReadOnly = True
          end
          item
            FieldName = 'Uso_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Uso'
            Title.Font.Style = [fsBold]
            Width = 77
            Font.Name = 'MS Sans Serif'
            ReadOnly = True
          end>
      end
      object pBarraPesq: TUniPanel
        Left = 0
        Top = 0
        Width = 1094
        Height = 27
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Align = alTop
        TabOrder = 1
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10' config.cls =' +
            ' '#39'BarraPesquisa'#39';'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        Color = clNone
        object cPesquisa: TUniEdit
          Left = 0
          Top = 0
          Width = 520
          Height = 27
          Hint = ''
          ShowHint = True
          BorderStyle = ubsInset
          Text = ''
          Align = alLeft
          TabOrder = 1
          EmptyText = 'Pesquisar'
          ClearButton = True
          OnKeyDown = cPesquisaKeyDown
        end
        object bPesquisa: TUniSpeedButton
          Left = 520
          Top = 0
          Width = 25
          Height = 27
          Hint = ''
          ShowHint = True
          Caption = ''
          Align = alLeft
          ParentColor = False
          IconAlign = iaCenter
          Images = UniMainModule.imgBotoes
          ImageIndex = 10
          TabOrder = 2
          OnClick = bPesquisaClick
        end
      end
    end
    object TabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Item'
      DesignSize = (
        1094
        781)
      object Ficha: TUniPanel
        Left = 203
        Top = 18
        Width = 744
        Height = 648
        Hint = ''
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        Caption = 'Ficha'
        object DBEdit2: TUniDBEdit
          Left = 270
          Top = 205
          Width = 180
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Serie'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 1
          FieldLabel = 'S'#233'rie'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cICMSProprio: TUniDBEdit
          Tag = 1
          Left = 16
          Top = 259
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'ICMS_Proprio'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 2
          FieldLabel = 'ICMS Pr'#243'prio'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cModelo: TUniDBEdit
          Left = 16
          Top = 205
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Modelo'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 3
          FieldLabel = 'Modelo'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cFornecedor: TUniDBLookupComboBox
          Tag = 1
          Left = 16
          Top = 178
          Width = 711
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Nome; CNPJ'
          ListSource = dsFornecedores
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Fornecedor'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 4
          Color = clWindow
          FieldLabel = 'Fornecedor'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          OnEnter = cFornecedorEnter
        end
        object cNotaEntrada: TUniDBEdit
          Tag = 1
          Left = 16
          Top = 151
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Nota'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 5
          FieldLabel = 'Nota de Entrada'
          FieldLabelWidth = 120
          BorderStyle = ubsInset
        end
        object cDataEntrada: TUniDBDateTimePicker
          Tag = 1
          Left = 270
          Top = 151
          Width = 180
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Data_Nota'
          DataSource = dsImobilizado
          DateTime = 46294.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 6
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FieldLabel = 'Data Entrada'
          FieldLabelWidth = 80
        end
        object cICMS_ST: TUniDBEdit
          Left = 16
          Top = 286
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'ICMS_ST'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 7
          FieldLabel = 'ICMS ST'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cICMS_Frete: TUniDBEdit
          Left = 16
          Top = 313
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'ICMS_Frete'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 8
          FieldLabel = 'ICMS Frete'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cICMS_Dif_Aliquota: TUniDBEdit
          Left = 16
          Top = 340
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'ICMS_Dif_Aliquota'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 9
          FieldLabel = 'ICMS Dif.Al'#237'quota'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cValor_Credito: TUniDBEdit
          Left = 16
          Top = 367
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Valor_Credito'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 10
          FieldLabel = 'Cr'#233'dito'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cDescricaoBem: TUniDBMemo
          Tag = 1
          Left = 16
          Top = 394
          Width = 711
          Height = 60
          Hint = ''
          ShowHint = True
          DataField = 'Descricao'
          DataSource = dsImobilizado
          BorderStyle = ubsInset
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 11
          FieldLabel = 'Descri'#231#227'o do Bem'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cCodigo_Imobilizado: TUniDBEdit
          Left = 16
          Top = 43
          Width = 431
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Codigo_Imobilizado'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 12
          FieldLabel = 'C'#243'digo Patrim'#244'nio'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cFuncao: TUniDBMemo
          Tag = 1
          Left = 16
          Top = 456
          Width = 711
          Height = 46
          Hint = ''
          ShowHint = True
          DataField = 'Funcao'
          DataSource = dsImobilizado
          BorderStyle = ubsInset
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 13
          FieldLabel = 'Fun'#231#227'o do Bem'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cProduto: TUniDBLookupComboBox
          Tag = 1
          Left = 16
          Top = 16
          Width = 711
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Codigo;Descricao_Reduzida'
          ListSource = dsProdutos
          KeyField = 'Codigo'
          ListFieldIndex = 1
          BorderStyle = ubsInset
          DataField = 'Codigo_Mercadoria'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 14
          Color = clWindow
          FieldLabel = 'Produto'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          OnExit = cProdutoExit
        end
        object cParcelas: TUniDBEdit
          Tag = 1
          Left = 16
          Top = 70
          Width = 200
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Parcelas'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 15
          FieldLabel = 'Parcelas'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cApropriadas: TUniDBEdit
          Left = 220
          Top = 70
          Width = 186
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Apropriadas'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 16
          FieldLabel = 'Apropriadas'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cMes_FimApropriacao: TUniDBEdit
          Left = 16
          Top = 97
          Width = 200
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Mes_FimApropriacao'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 17
          FieldLabel = 'Fim Apropria'#231#227'o (M'#234's)'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cVida_Util: TUniDBEdit
          Left = 456
          Top = 43
          Width = 162
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Vida_Util'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 18
          FieldLabel = 'Vida Util (Meses)'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cOrdem: TUniDBEdit
          Tag = 1
          Left = 454
          Top = 205
          Width = 142
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Ordem_Item'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 19
          FieldLabel = 'N'#186' Ordem na NF'
          FieldLabelWidth = 80
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object GroupBox2: TUniGroupBox
          Left = 16
          Top = 519
          Width = 566
          Height = 110
          Hint = ''
          ShowHint = True
          Caption = 'Cr'#233'dito a ser apropriado'
          TabOrder = 20
          ParentFont = False
          Font.Color = clBlue
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          object DBEdit16: TUniDBEdit
            Left = 11
            Top = 73
            Width = 267
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Aquisicao'
            DataSource = dsImobilizado
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 2
            FieldLabel = 'Vlr.Aquisi'#231#227'o'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object DBEdit15: TUniDBEdit
            Left = 285
            Top = 73
            Width = 267
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Valor_Depreciacao'
            DataSource = dsImobilizado
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 3
            FieldLabel = 'Vlr a ser Deprec.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cApropriacao_Inicial: TUniDBEdit
            Left = 11
            Top = 46
            Width = 267
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Apropriacao_Inicial'
            DataSource = dsImobilizado
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 0
            FieldLabel = 'Per'#237'odo Inicial Apropr.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object cApropriacao_Meses: TUniDBEdit
            Left = 285
            Top = 46
            Width = 267
            Height = 25
            Hint = ''
            ShowHint = True
            DataField = 'Apropriacao_Meses'
            DataSource = dsImobilizado
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 1
            FieldLabel = 'N'#186' de Meses Apropr.'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
            BorderStyle = ubsInset
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 11
            Top = 19
            Width = 541
            Height = 25
            Hint = ''
            ShowHint = True
            ListField = 'Descricao'
            ListSource = dsTipoCalc
            KeyField = 'Codigo'
            ListFieldIndex = 0
            BorderStyle = ubsInset
            DataField = 'Tipo_CalculoCredito'
            DataSource = dsImobilizado
            ParentFont = False
            Font.Color = clBlack
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Tipo de C'#225'lculo'
            FieldLabelWidth = 120
            FieldLabelSeparator = ' '
          end
        end
        object cQuantidade: TUniDBEdit
          Left = 16
          Top = 232
          Width = 250
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Quantidade'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 21
          FieldLabel = 'Quantidade'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cAno_FimApropriacao: TUniDBEdit
          Left = 220
          Top = 97
          Width = 186
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Ano_FimApropriacao'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 22
          FieldLabel = 'Fim Apropria'#231#227'o (Ano)'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
          BorderStyle = ubsInset
        end
        object cTipo_Movimentacao: TUniDBLookupComboBox
          Tag = 1
          Left = 16
          Top = 124
          Width = 711
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Descricao'
          ListSource = dsTipoMov
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Tipo_Movimentacao'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 23
          Color = clWindow
          FieldLabel = 'Tipo de Movimenta'#231#227'o'
          FieldLabelWidth = 120
          FieldLabelSeparator = ' '
        end
        object cUso: TUniDBLookupComboBox
          Tag = 1
          Left = 456
          Top = 70
          Width = 271
          Height = 25
          Hint = ''
          ShowHint = True
          ListField = 'Descricao'
          ListSource = dsUso
          KeyField = 'Codigo'
          ListFieldIndex = 0
          BorderStyle = ubsInset
          DataField = 'Uso'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 24
          Color = clWindow
          FieldLabel = 'Uso'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' '
        end
      end
    end
    object TabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'Sa'#237'da'
      DesignSize = (
        1094
        781)
      object UniPanel1: TUniPanel
        Left = 75
        Top = 18
        Width = 340
        Height = 267
        Hint = ''
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Enabled = False
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        Caption = 'Ficha'
        object DBEdit9: TUniDBEdit
          Left = 25
          Top = 105
          Width = 102
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_Modelo'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 1
        end
        object DBEdit10: TUniDBEdit
          Left = 25
          Top = 78
          Width = 102
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_Nota'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 2
        end
        object DBDateEdit1: TUniDBDateTimePicker
          Left = 182
          Top = 78
          Width = 110
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_DataNota'
          DataSource = dsImobilizado
          DateTime = 46294.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 3
          ParentFont = False
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
        end
        object DBEdit11: TUniDBEdit
          Left = 182
          Top = 105
          Width = 53
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_Serie'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 4
        end
        object DBEdit12: TUniDBEdit
          Left = 25
          Top = 190
          Width = 102
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_Meses'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 5
        end
        object DBEdit13: TUniDBEdit
          Left = 25
          Top = 132
          Width = 102
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_Item'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 6
        end
        object DBEdit14: TUniDBEdit
          Left = 25
          Top = 159
          Width = 102
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_AliquotaICMS'
          DataSource = dsImobilizado
          CharCase = ecUpperCase
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 7
        end
        object RxDBComboBox5: TUniDBComboBox
          Left = 25
          Top = 51
          Width = 275
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Tipo_MovimentacaoSaida'
          DataSource = dsImobilizado
          Items.Strings = (
            'Aliena'#231#227'o ou Transfer'#234'ncia.'
            'Perecimento, Extravio ou Deteriora'#231#227'o.'
            'Outras Sa'#237'das do Imobilizado.')
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 8
          IconItems = <>
        end
        object cSaidaMotivo: TUniDBComboBox
          Left = 25
          Top = 24
          Width = 103
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Saida_Motivo'
          DataSource = dsImobilizado
          Items.Strings = (
            'Sa'#237'da'
            'Perda'
            'Outros')
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 9
          IconItems = <>
        end
      end
    end
    object TabSheet3: TUniTabSheet
      Hint = ''
      ImageIndex = 2
      Caption = 'Contabeis'
      DesignSize = (
        1094
        781)
      object UniPanel2: TUniPanel
        Left = 94
        Top = 18
        Width = 461
        Height = 267
        Hint = ''
        Margins.Left = 6
        Margins.Top = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Enabled = False
        ShowHint = True
        ParentShowHint = False
        Anchors = [akTop]
        TabOrder = 0
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Ficha'#39';'#13#10'}')
        BorderStyle = ubsInset
        ShowCaption = False
        Caption = 'Ficha'
        object cContaNumero: TUniDBEdit
          Left = 17
          Top = 43
          Width = 143
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Conta_Numero'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 1
        end
        object cNatureza: TUniDBComboBox
          Left = 17
          Top = 97
          Width = 190
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Conta_Natureza'
          DataSource = dsImobilizado
          Items.Strings = (
            'Contas de ativo'
            'Contas de passivo'
            'Patrim'#244'nio l'#237'quido'
            'Contas de resultado'
            'Contas de compensa'#231#227'o'
            'Outras')
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 2
          IconItems = <>
        end
        object cTipoConta: TUniDBComboBox
          Left = 17
          Top = 124
          Width = 190
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Conta_Tipo'
          DataSource = dsImobilizado
          Items.Strings = (
            'Sint'#233'tica (grupo de contas)'
            'Anal'#237'tica (conta)')
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 3
          IconItems = <>
        end
        object cNivelConta: TUniDBEdit
          Left = 17
          Top = 151
          Width = 83
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Conta_Nivel'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 4
        end
        object cContaNome: TUniDBEdit
          Left = 17
          Top = 70
          Width = 419
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Conta_Nome'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 5
        end
        object cCentroCusto: TUniDBEdit
          Left = 17
          Top = 12
          Width = 143
          Height = 25
          Hint = ''
          ShowHint = True
          DataField = 'Centro_Custo'
          DataSource = dsImobilizado
          ParentFont = False
          Font.Color = clBlack
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 6
        end
      end
    end
  end
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1102
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
      DataSource = dsImobilizado
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      IconSet = icsFontAwesome
      Align = alLeft
      TabOrder = 1
    end
    object bAdicionar_: TUniSpeedButton
      Left = 143
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Adicionar novo registro.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 0
      TabOrder = 2
      OnClick = bAdicionar_Click
    end
    object bEditar_: TUniSpeedButton
      Left = 184
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Editar registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 1
      TabOrder = 3
      OnClick = bEditar_Click
    end
    object bExcluir_: TUniSpeedButton
      Left = 225
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Excluir reegistro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 2
      TabOrder = 4
      OnClick = bExcluir_Click
    end
    object bCancelar_: TUniSpeedButton
      Left = 307
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Cancelar modifica'#231#245'es feitas no registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 3
      TabOrder = 6
      OnClick = bCancelar_Click
    end
    object bSalvar_: TUniSpeedButton
      Left = 266
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Salva o registro corrente.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 4
      TabOrder = 5
      OnClick = bSalvar_Click
    end
    object bFechar_: TUniSpeedButton
      Left = 348
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      Align = alLeft
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 7
      OnClick = bFechar_Click
    end
  end
  object Alerta: TUniSweetAlert
    Title = ' '
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    Left = 107
    Top = 84
  end
  object Imobilizado: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * '
      ''
      'FROM Imobilizado')
    Left = 69
    Top = 146
    object ImobilizadoRegistro: TFDAutoIncField
      FieldName = 'Registro'
      Origin = 'Registro'
      ReadOnly = True
    end
    object ImobilizadoEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object ImobilizadoCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      Origin = 'Codigo_Mercadoria'
    end
    object ImobilizadoCodigo_Imobilizado: TStringField
      FieldName = 'Codigo_Imobilizado'
      Origin = 'Codigo_Imobilizado'
      Size = 30
    end
    object ImobilizadoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 200
    end
    object ImobilizadoTipo_Movimentacao: TStringField
      FieldName = 'Tipo_Movimentacao'
      Origin = 'Tipo_Movimentacao'
      Size = 2
    end
    object ImobilizadoFornecedor: TIntegerField
      FieldName = 'Fornecedor'
      Origin = 'Fornecedor'
    end
    object ImobilizadoData_Nota: TDateField
      FieldName = 'Data_Nota'
      Origin = 'Data_Nota'
    end
    object ImobilizadoNota_id: TIntegerField
      FieldName = 'Nota_id'
      Origin = 'Nota_id'
    end
    object ImobilizadoNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'Nota'
    end
    object ImobilizadoSerie: TStringField
      FieldName = 'Serie'
      Origin = 'Serie'
      Size = 3
    end
    object ImobilizadoModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'Modelo'
      Size = 3
    end
    object ImobilizadoICMS_Proprio: TFMTBCDField
      FieldName = 'ICMS_Proprio'
      Origin = 'ICMS_Proprio'
      Precision = 18
      Size = 6
    end
    object ImobilizadoICMS_ST: TFMTBCDField
      FieldName = 'ICMS_ST'
      Origin = 'ICMS_ST'
      Precision = 18
      Size = 6
    end
    object ImobilizadoICMS_Frete: TFMTBCDField
      FieldName = 'ICMS_Frete'
      Origin = 'ICMS_Frete'
      Precision = 18
      Size = 6
    end
    object ImobilizadoICMS_Dif_Aliquota: TFMTBCDField
      FieldName = 'ICMS_Dif_Aliquota'
      Origin = 'ICMS_Dif_Aliquota'
      Precision = 18
      Size = 6
    end
    object ImobilizadoValor_Credito: TFMTBCDField
      FieldName = 'Valor_Credito'
      Origin = 'Valor_Credito'
      Precision = 18
      Size = 6
    end
    object ImobilizadoOrdem_Item: TSmallintField
      FieldName = 'Ordem_Item'
      Origin = 'Ordem_Item'
    end
    object ImobilizadoSaida_Motivo: TStringField
      FieldName = 'Saida_Motivo'
      Origin = 'Saida_Motivo'
      Size = 1
    end
    object ImobilizadoSaida_Nota: TIntegerField
      FieldName = 'Saida_Nota'
      Origin = 'Saida_Nota'
    end
    object ImobilizadoSaida_DataNota: TDateField
      FieldName = 'Saida_DataNota'
      Origin = 'Saida_DataNota'
    end
    object ImobilizadoSaida_Modelo: TStringField
      FieldName = 'Saida_Modelo'
      Origin = 'Saida_Modelo'
      Size = 3
    end
    object ImobilizadoSaida_Serie: TStringField
      FieldName = 'Saida_Serie'
      Origin = 'Saida_Serie'
      Size = 3
    end
    object ImobilizadoSaida_Item: TSmallintField
      FieldName = 'Saida_Item'
      Origin = 'Saida_Item'
    end
    object ImobilizadoSaida_Meses: TSmallintField
      FieldName = 'Saida_Meses'
      Origin = 'Saida_Meses'
    end
    object ImobilizadoSaida_AliquotaICMS: TFMTBCDField
      FieldName = 'Saida_AliquotaICMS'
      Origin = 'Saida_AliquotaICMS'
      Precision = 18
      Size = 6
    end
    object ImobilizadoFuncao: TStringField
      FieldName = 'Funcao'
      Origin = 'Funcao'
      Size = 100
    end
    object ImobilizadoTipo_CalculoCredito: TSmallintField
      FieldName = 'Tipo_CalculoCredito'
      Origin = 'Tipo_CalculoCredito'
    end
    object ImobilizadoValor_Aquisicao: TFMTBCDField
      FieldName = 'Valor_Aquisicao'
      Origin = 'Valor_Aquisicao'
      Precision = 18
      Size = 6
    end
    object ImobilizadoValor_Depreciacao: TFMTBCDField
      FieldName = 'Valor_Depreciacao'
      Origin = 'Valor_Depreciacao'
      Precision = 18
      Size = 6
    end
    object ImobilizadoApropriacao_Inicial: TStringField
      FieldName = 'Apropriacao_Inicial'
      Origin = 'Apropriacao_Inicial'
      Size = 7
    end
    object ImobilizadoApropriacao_Meses: TSmallintField
      FieldName = 'Apropriacao_Meses'
      Origin = 'Apropriacao_Meses'
    end
    object ImobilizadoParcelas: TSmallintField
      FieldName = 'Parcelas'
      Origin = 'Parcelas'
    end
    object ImobilizadoApropriadas: TSmallintField
      FieldName = 'Apropriadas'
      Origin = 'Apropriadas'
    end
    object ImobilizadoMes_FimApropriacao: TSmallintField
      FieldName = 'Mes_FimApropriacao'
      Origin = 'Mes_FimApropriacao'
    end
    object ImobilizadoAno_FimApropriacao: TSmallintField
      FieldName = 'Ano_FimApropriacao'
      Origin = 'Ano_FimApropriacao'
    end
    object ImobilizadoCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'Centro_Custo'
      Size = 10
    end
    object ImobilizadoVida_Util: TSmallintField
      FieldName = 'Vida_Util'
      Origin = 'Vida_Util'
    end
    object ImobilizadoTipo_MovimentacaoSaida: TStringField
      FieldName = 'Tipo_MovimentacaoSaida'
      Origin = 'Tipo_MovimentacaoSaida'
      Size = 2
    end
    object ImobilizadoConta_Numero: TStringField
      FieldName = 'Conta_Numero'
      Origin = 'Conta_Numero'
      Size = 15
    end
    object ImobilizadoConta_Nome: TStringField
      FieldName = 'Conta_Nome'
      Origin = 'Conta_Nome'
      Size = 60
    end
    object ImobilizadoConta_Natureza: TStringField
      FieldName = 'Conta_Natureza'
      Origin = 'Conta_Natureza'
      Size = 2
    end
    object ImobilizadoConta_Tipo: TStringField
      FieldName = 'Conta_Tipo'
      Origin = 'Conta_Tipo'
      Size = 1
    end
    object ImobilizadoConta_Nivel: TStringField
      FieldName = 'Conta_Nivel'
      Origin = 'Conta_Nivel'
      Size = 5
    end
    object ImobilizadoMes_Faturamento: TSmallintField
      FieldName = 'Mes_Faturamento'
      Origin = 'Mes_Faturamento'
    end
    object ImobilizadoAno_Faturamento: TSmallintField
      FieldName = 'Ano_Faturamento'
      Origin = 'Ano_Faturamento'
    end
    object ImobilizadoQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Precision = 18
      Size = 3
    end
    object ImobilizadoUso: TSmallintField
      FieldName = 'Uso'
      Origin = 'Uso'
    end
    object ImobilizadoUso_Desc: TStringField
      FieldKind = fkLookup
      FieldName = 'Uso_Desc'
      LookupDataSet = Uso
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Uso'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object ImobilizadoTipo_MovDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo_MovDesc'
      LookupDataSet = TipoMov
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Descricao'
      KeyFields = 'Tipo_Movimentacao'
      Size = 80
      Lookup = True
    end
  end
  object dsImobilizado: TDataSource
    DataSet = Imobilizado
    Left = 70
    Top = 196
  end
  object Fornecedores: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM Fornecedores')
    Left = 70
    Top = 249
  end
  object dsFornecedores: TDataSource
    DataSet = Fornecedores
    Left = 70
    Top = 299
  end
  object Produtos: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM produtos')
    Left = 70
    Top = 349
  end
  object dsProdutos: TDataSource
    DataSet = Produtos
    Left = 70
    Top = 399
  end
  object TipoMov: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 148
    Top = 143
    Content = {
      414442530F00D42CCE020000FF00010001FF02FF0304000E0000005400690070
      006F004D006F00760005000A0000005400610062006C00650006000000000007
      0000080032000000090000FF0AFF0B04000C00000043006F006400690067006F
      0005000C00000043006F006400690067006F000C00010000000E000D000F0002
      00000010000111000112000113000114000115000116000C00000043006F0064
      00690067006F00170002000000FEFF0B04001200000044006500730063007200
      6900630061006F00050012000000440065007300630072006900630061006F00
      0C00020000000E000D000F003C00000010000111000112000113000114000115
      0001160012000000440065007300630072006900630061006F0017003C000000
      FEFEFF18FEFF19FEFF1AFF1B1C0000000000FF1D000002000000534901002200
      000053616C646F20696E696369616C2064652062656E7320696D6F62696C697A
      61646F73FEFEFF1B1C0001000000FF1D000002000000494D01001E000000496D
      6F62696C697A61E7E36F2064652062656D20696E646976696475616CFEFEFF1B
      1C0002000000FF1D0000020000004941010026000000496D6F62696C697A61E7
      E36F20656D20416E64616D656E746F202D20436F6D706F6E656E7465FEFEFF1B
      1C0003000000FF1D0000020000004349010037000000436F6E636C7573E36F20
      646520496D6F62696C697A61E7E36F20656D20416E64616D656E746F202D2042
      656D20526573756C74616E7465FEFEFF1B1C0004000000FF1D0000020000004D
      43010028000000496D6F62696C697A61E7E36F206F7269756E646120646F2041
      7469766F2043697263756C616E7465FEFEFF1B1C00050000001F001E00FF1D00
      0002000000424101002C000000426169786120646F2062656D202D2046696D20
      646F20706572ED6F646F206465206170726F70726961E7E36FFEFEFEFEFEFF20
      FEFF21220007000000FF23FEFEFE0E004D0061006E0061006700650072001E00
      5500700064006100740065007300520065006700690073007400720079001200
      5400610062006C0065004C006900730074000A005400610062006C0065000800
      4E0061006D006500140053006F0075007200630065004E0061006D0065000A00
      54006100620049004400240045006E0066006F0072006300650043006F006E00
      730074007200610069006E00740073001E004D0069006E0069006D0075006D00
      43006100700061006300690074007900180043006800650063006B004E006F00
      74004E0075006C006C00140043006F006C0075006D006E004C00690073007400
      0C0043006F006C0075006D006E00100053006F00750072006300650049004400
      18006400740041006E007300690053007400720069006E006700100044006100
      7400610054007900700065000800530069007A00650014005300650061007200
      63006800610062006C006500120041006C006C006F0077004E0075006C006C00
      0800420061007300650014004F0041006C006C006F0077004E0075006C006C00
      12004F0049006E0055007000640061007400650010004F0049006E0057006800
      6500720065001A004F0072006900670069006E0043006F006C004E0061006D00
      6500140053006F007500720063006500530069007A0065001C0043006F006E00
      730074007200610069006E0074004C0069007300740010005600690065007700
      4C006900730074000E0052006F0077004C00690073007400060052006F007700
      0A0052006F0077004900440010004F0072006900670069006E0061006C001600
      7200730055006E006300680061006E006700650064001A0052006F0077005000
      720069006F007200530074006100740065001800520065006C00610074006900
      6F006E004C006900730074001C0055007000640061007400650073004A006F00
      750072006E0061006C001200530061007600650050006F0069006E0074000E00
      4300680061006E00670065007300}
    object TipoMovCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object TipoMovDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dsTipoMov: TDataSource
    DataSet = TipoMov
    Left = 148
    Top = 196
  end
  object TipoCalc: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 148
    Top = 248
    Content = {
      414442530F00D42C3D020000FF00010001FF02FF030400100000005400690070
      006F00430061006C00630005000A0000005400610062006C0065000600000000
      00070000080032000000090000FF0AFF0B04000C00000043006F006400690067
      006F0005000C00000043006F006400690067006F000C00010000000E000D000F
      000110000111000112000113000114000115000C00000043006F006400690067
      006F00FEFF0B040012000000440065007300630072006900630061006F000500
      12000000440065007300630072006900630061006F000C00020000000E001600
      17003C0000000F00011000011100011200011300011400011500120000004400
      65007300630072006900630061006F0018003C000000FEFEFF19FEFF1AFEFF1B
      FF1C1D00000000001F001E00FF20000000000100350000004372E96469746F20
      636F6D2062617365206E6F7320656E636172676F732064652064657072656369
      61E7E36F202D20284631323029FEFEFF1C1D00010000001F001E00FF20000001
      000100350000004372E96469746F20636F6D2062617365206E6F7320656E6361
      72676F7320646520616D6F7274697A61E7E36F202D20284631323029FEFEFF1C
      1D00020000001F001E00FF200000020001002D0000004372E96469746F20636F
      6D2062617365206E6F2076616C6F7220646520617175697369E7E36F20284631
      333029FEFEFF1C1D00030000001F001E00FF200000030001000B0000004EE36F
      2063616C63756C61FEFEFEFEFEFF21FEFF22230008000000FF24FEFEFE0E004D
      0061006E0061006700650072001E005500700064006100740065007300520065
      0067006900730074007200790012005400610062006C0065004C006900730074
      000A005400610062006C00650008004E0061006D006500140053006F00750072
      00630065004E0061006D0065000A0054006100620049004400240045006E0066
      006F0072006300650043006F006E00730074007200610069006E00740073001E
      004D0069006E0069006D0075006D004300610070006100630069007400790018
      0043006800650063006B004E006F0074004E0075006C006C00140043006F006C
      0075006D006E004C006900730074000C0043006F006C0075006D006E00100053
      006F007500720063006500490044000E006400740049006E0074003100360010
      0044006100740061005400790070006500140053006500610072006300680061
      0062006C006500120041006C006C006F0077004E0075006C006C000800420061
      007300650014004F0041006C006C006F0077004E0075006C006C0012004F0049
      006E0055007000640061007400650010004F0049006E00570068006500720065
      001A004F0072006900670069006E0043006F006C004E0061006D006500180064
      00740041006E007300690053007400720069006E0067000800530069007A0065
      00140053006F007500720063006500530069007A0065001C0043006F006E0073
      0074007200610069006E0074004C00690073007400100056006900650077004C
      006900730074000E0052006F0077004C00690073007400060052006F0077000A
      0052006F0077004900440016007200730055006E006300680061006E00670065
      0064001A0052006F0077005000720069006F0072005300740061007400650010
      004F0072006900670069006E0061006C001800520065006C006100740069006F
      006E004C006900730074001C0055007000640061007400650073004A006F0075
      0072006E0061006C001200530061007600650050006F0069006E0074000E0043
      00680061006E00670065007300}
    object TipoCalcCodigo: TSmallintField
      FieldName = 'Codigo'
    end
    object TipoCalcDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dsTipoCalc: TDataSource
    DataSet = TipoCalc
    Left = 148
    Top = 292
  end
  object Uso: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftSmallint
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 146
    Top = 339
    Content = {
      414442530F00D42C6A010000FF00010001FF02FF03040006000000550073006F
      0005000A0000005400610062006C006500060000000000070000080032000000
      090000FF0AFF0B04000C00000043006F006400690067006F0005000C00000043
      006F006400690067006F000C00010000000E000D000F00011000011100011200
      0113000114000115000C00000043006F006400690067006F00FEFF0B04001200
      0000440065007300630072006900630061006F00050012000000440065007300
      630072006900630061006F000C00020000000E00160017003C0000000F000110
      0001110001120001130001140001150012000000440065007300630072006900
      630061006F0018003C000000FEFEFF19FEFF1AFEFF1BFF1C1D00000000001F00
      1E00FF200000010001000300000042656DFEFEFF1C1D00010000001F001E00FF
      200000020001000A000000436F6D706F6E656E7465FEFEFEFEFEFF21FEFF2223
      000D000000FF24FEFEFE0E004D0061006E0061006700650072001E0055007000
      6400610074006500730052006500670069007300740072007900120054006100
      62006C0065004C006900730074000A005400610062006C00650008004E006100
      6D006500140053006F0075007200630065004E0061006D0065000A0054006100
      620049004400240045006E0066006F0072006300650043006F006E0073007400
      7200610069006E00740073001E004D0069006E0069006D0075006D0043006100
      700061006300690074007900180043006800650063006B004E006F0074004E00
      75006C006C00140043006F006C0075006D006E004C006900730074000C004300
      6F006C0075006D006E00100053006F007500720063006500490044000E006400
      740049006E007400310036001000440061007400610054007900700065001400
      530065006100720063006800610062006C006500120041006C006C006F007700
      4E0075006C006C000800420061007300650014004F0041006C006C006F007700
      4E0075006C006C0012004F0049006E0055007000640061007400650010004F00
      49006E00570068006500720065001A004F0072006900670069006E0043006F00
      6C004E0061006D00650018006400740041006E00730069005300740072006900
      6E0067000800530069007A006500140053006F00750072006300650053006900
      7A0065001C0043006F006E00730074007200610069006E0074004C0069007300
      7400100056006900650077004C006900730074000E0052006F0077004C006900
      73007400060052006F0077000A0052006F007700490044001600720073005500
      6E006300680061006E006700650064001A0052006F0077005000720069006F00
      72005300740061007400650010004F0072006900670069006E0061006C001800
      520065006C006100740069006F006E004C006900730074001C00550070006400
      61007400650073004A006F00750072006E0061006C0012005300610076006500
      50006F0069006E0074000E004300680061006E00670065007300}
    object SmallintField1: TSmallintField
      FieldName = 'Codigo'
    end
    object StringField1: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dsUso: TDataSource
    DataSet = Uso
    Left = 147
    Top = 383
  end
  object ttmp: TFDQuery
    Connection = UniMainModule.Conecta
    UpdateOptions.AssignedValues = [uvEUpdate, uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT * FROM produtos')
    Left = 69
    Top = 452
  end
end
