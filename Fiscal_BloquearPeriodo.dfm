object fFiscal_BloquearPeriodo: TfFiscal_BloquearPeriodo
  Left = 0
  Top = 0
  Width = 1066
  Height = 723
  OnCreate = uniFrameCreate
  OnDestroy = uniFrameDestroy
  TabOrder = 0
  DesignSize = (
    1066
    723)
  object pBarraNav: TUniPanel
    Left = 0
    Top = 0
    Width = 1066
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
    object bFechar: TUniSpeedButton
      Left = 337
      Top = 0
      Width = 41
      Height = 35
      Hint = 'Fecha a tela de cadastro atual.'
      Caption = ''
      ParentColor = False
      IconAlign = iaCenter
      Images = UniMainModule.imgBotoes
      ImageIndex = 7
      TabOrder = 1
      OnClick = bFecharClick
    end
    object bBloquearMes: TUniButton
      Left = 0
      Top = 0
      Width = 116
      Height = 35
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      ShowHint = True
      ParentShowHint = False
      Caption = 'Desbloquear M'#234's'
      ParentFont = False
      TabOrder = 2
      OnClick = bBloquearMesClick
    end
    object bBloqTudo: TUniButton
      Left = 116
      Top = 0
      Width = 103
      Height = 35
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      ShowHint = True
      ParentShowHint = False
      Caption = 'Bloquear Tudo'
      TabOrder = 3
      OnClick = bBloqTudoClick
    end
    object bDesTudo: TUniButton
      Left = 219
      Top = 0
      Width = 118
      Height = 35
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      ShowHint = True
      ParentShowHint = False
      Caption = 'Desbloquear Tudo'
      TabOrder = 4
      OnClick = bDesTudoClick
    end
  end
  object Pasta: TUniPageControl
    Left = 0
    Top = 35
    Width = 1066
    Height = 688
    Hint = ''
    BodyRTL = False
    ActivePage = aLista
    Plain = True
    Align = alClient
    TabOrder = 0
    object aLista: TUniTabSheet
      Hint = ''
      Caption = 'Meses Movimentados'
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
          '= '#39'Painel'#39';'#13#10'}')
      object UniScrollBox1: TUniScrollBox
        Left = 0
        Top = 0
        Width = 1058
        Height = 660
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
            '= '#39'Pasta'#39';'#13#10'}')
        TabOrder = 0
        ScrollWidth = 313
        object UniPanel3: TUniPanel
          Left = 0
          Top = 0
          Width = 313
          Height = 658
          Hint = ''
          Align = alLeft
          TabOrder = 0
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
              '= '#39'Ficha'#39';'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          Color = clNone
          object Grade: TUniDBGrid
            Left = 0
            Top = 63
            Width = 313
            Height = 595
            Hint = ''
            DataSource = dsFechamento
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            WebOptions.Paged = False
            WebOptions.PageSize = 30
            LoadMask.Message = 'Carregando dados ...'
            ForceFit = True
            BorderStyle = ubsNone
            Align = alClient
            TabOrder = 1
            ParentColor = False
            Color = clWindow
            OnFieldImage = GradeFieldImage
            Columns = <
              item
                FieldName = 'Ano'
                Title.Alignment = taCenter
                Title.Caption = 'Ano'
                Title.Font.Style = [fsBold]
                Width = 60
                Alignment = taCenter
              end
              item
                FieldName = 'Nome_Mes'
                Title.Alignment = taCenter
                Title.Caption = 'M'#234's'
                Title.Font.Style = [fsBold]
                Width = 100
              end
              item
                FieldName = 'Cadeado'
                Title.Alignment = taCenter
                Title.Caption = 'Sit'
                Title.Font.Style = [fsBold]
                Width = 41
                Alignment = taCenter
                ReadOnly = True
                ImageOptions.Visible = True
                ImageOptions.Width = 20
                ImageOptions.Height = 20
              end>
          end
          object UniPanel2: TUniPanel
            Left = 0
            Top = 0
            Width = 313
            Height = 63
            Hint = ''
            Align = alTop
            TabOrder = 2
            ClientEvents.UniEvents.Strings = (
              
                'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls ' +
                '= '#39'Ficha'#39';  '#13#10'}')
            BorderStyle = ubsNone
            Caption = ''
            Color = clNone
            object cAno: TUniSpinEdit
              Left = 14
              Top = 6
              Width = 80
              Height = 50
              Hint = ''
              TabOrder = 1
              FieldLabel = 'Ano'
              FieldLabelWidth = 40
              FieldLabelAlign = laTop
            end
            object cTodos: TUniCheckBox
              Left = 110
              Top = 35
              Width = 115
              Height = 17
              Hint = ''
              Caption = 'Todos os Anos'
              ParentFont = False
              Font.Height = -13
              TabOrder = 2
              FieldLabelWidth = 80
            end
            object UniSpeedButton1: TUniSpeedButton
              Left = 256
              Top = 9
              Width = 40
              Height = 40
              Hint = '  Atualiza os dados do endere'#231'o'
              Caption = ''
              ParentColor = False
              IconAlign = iaCenter
              Images = UniMainModule.imgBotoes
              ImageIndex = 8
              TabOrder = 3
              OnClick = UniSpeedButton1Click
            end
          end
        end
      end
    end
  end
  object UniImage1: TUniImage
    Left = 124
    Top = 197
    Width = 32
    Height = 32
    Hint = ''
    Visible = False
    Center = True
    Picture.Data = {
      0A544A504547496D616765F2050000FFD8FFE000104A46494600010101006000
      600000FFDB004300020101020101020202020202020203050303030303060404
      0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
      0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108001B001B03012200021101031101
      FFC4001F0000010501010101010100000000000000000102030405060708090A
      0BFFC400B5100002010303020403050504040000017D01020300041105122131
      410613516107227114328191A1082342B1C11552D1F02433627282090A161718
      191A25262728292A3435363738393A434445464748494A535455565758595A63
      6465666768696A737475767778797A838485868788898A92939495969798999A
      A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
      D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
      01010101010101010000000000000102030405060708090A0BFFC400B5110002
      0102040403040705040400010277000102031104052131061241510761711322
      328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
      292A35363738393A434445464748494A535455565758595A636465666768696A
      737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
      A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
      E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD1D
      FF0082957FC14AB50F831E219FE1F7C3E9E187C43046ADAC6B0D1893FB2F780C
      B042AC0A994A956676055158000B9263F99351F8651AE99A0EABF187E3BEBFE1
      BF13F8A6CE3D52CAC9ACEF75B9EC6D25E619EEA4594795B8024443E655C671C8
      5F2C974E93E3B7ED4A6CF559E6B697C69E3016B79322832406EEF823B283C657
      CC381D3803A57E827ED45FF04EFF00853E31F8A5A05EF8AFC75E27D0F55F140B
      5F0FE956B0B41B6F25B7B6088A3303618A4792490BB88030580AFE608D6CD38A
      EAE2F31694E9D39C61084E728538A6DEAF96516E5F0ADF572F2497F3FF00B4CC
      3886A6231AD29C612518C25371824DBED28B72D12DF572F2497CE3E01FDB2BE2
      BFEC01F1B67F0AF8B758B8F1C7876D5A369ADA7BD6BC5B9B49155E2B9B1B873B
      8031905549F2CFCCA42B7CCBFA83E03F1C697F133C17A5F88344BA4BED2759B6
      8EEED275047991B804641E41E790402082080457E677FC15DFE0069DF05BC41F
      0C27B0BEBFBBFB47878E8256E76711E9AB6E91BE5547CCE2E0EEED951803A571
      7FB3F7EDABF103E107C23D2BC3BA1C97234BD3CCE600A3206F9E491BFF001E76
      AF5F23E31AFC319BE2724CD1CA7463AC35E7946F6695FAAE597DEB4B5D9EA64F
      C4B5B21CCB119563DCA54E3AC75E671BD9A57EDCAFEF5A25766EFED9BF012E7F
      637FDB7F48F1B5CD9DD4FE06D53C536DE23B5B8B640DB196E96E6E2D39DAAB2A
      9590A29203215C1F95F6FD03E3AFF82A97C0DF887AE786F50D4B4FF8866E3C27
      A8FF006A69DE4DB244A93F94F16E6559C071E5C922E1B230E7D6BEC8F1B781B4
      7F893E18BBD175FD2EC758D26F9764F69790ACB14A0104654F1904020F504023
      915F959FB67FECDBE0BF847F1E5F45F0F68EDA7E99E628F27EDB71370719F99D
      D9BF5AF4389B2BCCB857DB62F279C1D0AF352709C5B7196FA7471BEABAAD37DC
      ECCF72DC770FFB5C465B283A35649B8C95DA96EADD2C9EAB66B4DED72FFF00C1
      433F6A9D13F6F5F187C39D27E1EE91E25BBD4F4E7BEB616B736891C97525C9B6
      F2D630AED9C790E589C0030738CE3EE6FD987F623F0E7C1EF80BE1AF0F6BDA66
      9DAC6B7636CCF7F745490F3CB234B22A9E3288CE514900955048CD49FB17FECB
      FE02F833F0FB4DD6FC39E1AB2B0D6757B353757EEF25C5CB83D5564959991090
      0945214900E322BDBEBEC385784AAAC4D5CF73971A988AEA2BDD5EE46292B593
      EAECAEEDD343E9B87786EA2C454CDF34719D6AA96CBDD4ACB6BF576577F71FFF
      D9}
    Proportional = True
    Anchors = [akLeft, akBottom]
    Transparent = True
  end
  object UniImage2: TUniImage
    Left = 162
    Top = 197
    Width = 32
    Height = 32
    Hint = ''
    Visible = False
    Center = True
    Picture.Data = {
      0A544A504547496D6167657F060000FFD8FFE000104A46494600010101006000
      600000FFE100224578696600004D4D002A000000080001011200030000000100
      01000000000000FFDB0043000201010201010202020202020202030503030303
      030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
      0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108001B001B030122000211
      01031101FFC4001F000001050101010101010000000000000000010203040506
      0708090A0BFFC400B5100002010303020403050504040000017D010203000411
      05122131410613516107227114328191A1082342B1C11552D1F0243362728209
      0A161718191A25262728292A3435363738393A434445464748494A5354555657
      58595A636465666768696A737475767778797A838485868788898A9293949596
      9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
      D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
      0100030101010101010101010000000000000102030405060708090A0BFFC400
      B511000201020404030407050404000102770001020311040521310612415107
      61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
      1A262728292A35363738393A434445464748494A535455565758595A63646566
      6768696A737475767778797A82838485868788898A92939495969798999AA2A3
      A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
      D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
      3F00FAB3FE0B57FF0005ADD73E02F8E2FF00E107C20BE86C7C47611AAF88BC46
      B1ACB2698EEA1FEC96C1814F37611BE4C36CDFB576C8A4A7C63AEFECE1A0E9F6
      DE15D43F68AFDA73C59E17F88DE34D3EDF5A82C0E937DE24B8D0ACEE06EB79F5
      0B833AB4723AFCC605CC88BB4B70DC781F8274097F6B3FDB9747D2FC4975756B
      37C4FF001F4169AADCC2079F0B6A1A8AA4CEBB811BC19988C82323915FB07FB7
      07FC1213F67BF8A9FB4BE83AB7C40F891E3CF0EF8AFE26496DA1689A7DACD6A2
      1BE96CAC22842A66D1F693140A4B3B052EE1460B2AD7E777C46632A95DA5249A
      4936D257BF66B5D96FAB7E96FEF6AD4721F0F68E032384A74AA55A53A956AD2A
      51A956728A8E979C26953F8E4D72FBB182D52726FE2CF837FF000520F8EDFF00
      048DFDA9AF7E1EFC46F105F7C48F0769B3422F2C67D45B5149ACA58E3921BCD3
      2E643B90185959632C233B995951FE74FDCEF869F12345F8C3F0F744F15786EF
      A3D5341F115945A869F771A9559E19543A36D60194E0F2AC03039040208AFC1B
      FF0082E4FF00C13FB47FD873C4BF0CE6D2FC6DE3EF1B49E27D3EF2D1E4F155FA
      5F4D650D8FD95208A17544DB1049CA84C61420C601C0EBBF609FF8289FC52F81
      9FB277853C2BE1D8A49347D2BED82DDBECE1F87BC9E56E483D19D85776599954
      C1E22A613117E55B2BDDAD9A57ED667C9F885E1EE038BF87B03C55C3FC91AF51
      F2D4928FB2854B734653E5E925383B75717AB764733FB7FF00ECA979FF0004CC
      FF0082A67863E255FE9BA85D7C2DBFF1CD978CB4EBAB18431448EFA3BBB9B050
      4AA09A32B208D198078FCB6DD9DE17EBCF887FF05F0FD97FE27F8DBC1DE20D53
      45F8C2752F01EA12EA7A435BDA450471CF242F03B3A2DD859018A49130C08C48
      DEA6BF473E297C28F0CFC6EF035F7867C5FA0E97E24F0FEA6A12E6C350B759E1
      97072A76B0E195806561865600820806BF053FE0A3BFB1BFC37F807FB5DCBE17
      F09F875B49D096E1505B7F68DD5C601C646F96567FD6B5C66171197B954C2B8F
      249A766B54F756F25D3B7E279BC13C4591F1FF00D5F01C4B4EB2C5E1694A0AA5
      29A8C674ED67CD7D549A76695D4AEDE97B1BFF00F056BFDB8BC3FF00F0574F8A
      5F07FC35F06FC37E34D435ED2DF51B31677D630C325E4B746D4C6B18499F8516
      F233B3ED545C127018AFEB37EC3BFB01F86FF65BFD943C13E04D674CD175FD6B
      43B263A95F340B209AEA695E79C23328631AC92BAA1600EC55C807354FFE09C9
      FB10FC29FD99FE12E91E21F04F82F4CD1BC41E22D3636BFD4D9E5BABD983052D
      189A677748C95526342A84A83B72335F480518AF572DCB671AB2C6625A9549DB
      6D92B2EFDEC8FCBBC43F10B0D88C061F85387613A381C2CA4D73C93A939B949B
      7271D124E525149BDEEDEC97FFD9}
    Proportional = True
    Anchors = [akLeft, akBottom]
    Transparent = True
  end
  object FechamentoFiscal: TFDQuery
    AfterScroll = FechamentoFiscalAfterScroll
    OnCalcFields = FechamentoFiscalCalcFields
    Connection = UniMainModule.Conecta
    SQL.Strings = (
      'select * from FechamentoFiscal')
    Left = 140
    Top = 219
    object FechamentoFiscalAno: TSmallintField
      FieldName = 'Ano'
      Origin = 'Ano'
    end
    object FechamentoFiscalMes: TSmallintField
      FieldName = 'Mes'
      Origin = 'Mes'
    end
    object FechamentoFiscalNome_Mes: TStringField
      FieldName = 'Nome_Mes'
      Origin = 'Nome_Mes'
      Size = 9
    end
    object FechamentoFiscalFechado: TBooleanField
      FieldName = 'Fechado'
      Origin = 'Fechado'
    end
    object FechamentoFiscalEmpresa: TStringField
      FieldName = 'Empresa'
      Origin = 'Empresa'
      Size = 14
    end
    object FechamentoFiscalCadeado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cadeado'
      Calculated = True
    end
  end
  object dsFechamento: TDataSource
    DataSet = FechamentoFiscal
    Left = 140
    Top = 275
  end
  object Alerta: TUniSweetAlert
    Title = 'Data inv'#225'lida!'
    Text = 'Alerta !'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    Width = 400
    Padding = 20
    ShowCloseButton = True
    Left = 512
    Top = 4
  end
end

