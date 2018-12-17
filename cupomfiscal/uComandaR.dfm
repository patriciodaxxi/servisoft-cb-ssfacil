object fComandaR: TfComandaR
  Left = 424
  Top = 156
  Width = 347
  Height = 515
  Caption = 'fComandaR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 302
    Height = 454
    DataSource = dmCupomFiscal.dsComandaRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 0.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 80.000000000000000000
    PageSetup.PaperHeight = 120.000000000000000000
    RecordRange = rrCurrentOnly
    object RLSubDetail1: TRLSubDetail
      Left = 0
      Top = 4
      Width = 279
      Height = 288
      DataSource = dmCupomFiscal.dsComandaRel
      RecordRange = rrCurrentOnly
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 279
        Height = 267
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 90
          Top = 1
          Width = 188
          Height = 14
          AutoSize = False
          DataField = 'FILIAL_NOME'
          DataSource = dmCupomFiscal.dsComandaRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 90
          Top = 15
          Width = 188
          Height = 12
          AutoSize = False
          DataField = 'FILIAL_END'
          DataSource = dmCupomFiscal.dsComandaRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 90
          Top = 27
          Width = 113
          Height = 12
          DataField = 'FILIAL_CIDADE_BAIRRO'
          DataSource = dmCupomFiscal.dsComandaRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel1: TRLLabel
          Left = 0
          Top = 112
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'QTD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 41
          Top = 112
          Width = 176
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 216
          Top = 112
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = 129
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 41
          Top = 129
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = #193'GUA MINERAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 216
          Top = 129
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 0
          Top = 146
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 41
          Top = 146
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'REFRIGERANTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 216
          Top = 146
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 0
          Top = 163
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 41
          Top = 163
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'H20H / AQUARIUS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 216
          Top = 163
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 0
          Top = 180
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 41
          Top = 180
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'SUCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 216
          Top = 180
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 0
          Top = 197
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 41
          Top = 197
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'CERVEJA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 216
          Top = 197
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 0
          Top = 214
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 41
          Top = 214
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'VINHO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 216
          Top = 214
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 0
          Top = 231
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 41
          Top = 231
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'FRUKI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 216
          Top = 231
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 0
          Top = 248
          Width = 41
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 41
          Top = 248
          Width = 176
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'LONG NECK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 216
          Top = 248
          Width = 59
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 90
          Top = 89
          Width = 188
          Height = 14
          AutoSize = False
          DataField = 'FILIAL_FONE'
          DataSource = dmCupomFiscal.dsComandaRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = 'Fone: '
        end
        object RLImage1: TRLImage
          Left = 4
          Top = 0
          Width = 80
          Height = 80
          Picture.Data = {
            0A544A504547496D6167652F130000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080050005003012200021101031101
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
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
            A8892A2A5AF967FE0AF1F17B5AF863FB19EA1A3F85F523A378B3E266AFA7F813
            45BEC3FF00A1CFA8CE22925CA7CC0ADB89D815E4305C53477659809E3B174F09
            4DD9CE4A377B2BBDDF92DD9F337FC141BFE0B8371E1CBED4345F84BAD693A0F8
            6ECAE26D32E7C7F7162BABCDA95DC6BFBD8742B12CB15DB424A86B9B865B50EC
            AA5BE652DF9D7E2BFF0082A178E7C45AC35D4DE38F8F17F2B3B3B4F2FC476D3F
            CC2CC4E56DED6D121847A22EE55E80902AFF00C51F877F067C0BF1BE3F0BFC44
            BAF899AA6AF6AD16876FE1AF034764D1782600DB2DEC1E490482F3504DE1AE22
            B6458CDD4B38F32490B135BE2D7ECA9F0B7F632F8F5AC7837C6FA978B3E2FF00
            89AD7544B4D33C2DE0FF00F89548F04DB1AD7EDD73344EC9792A489FE896F139
            562034A09DA2F961F68FEC4E14E1BE14CB30D0A3530D52A559C39E3EE34E7156
            BC94B4D169794A51859FBBA3BBF76FD8FF00FE0B59F133C17E2AB5B3B3F176AD
            E38B79A708DE10F8813DBCD3DFA9258AE9FAEC51C4CB74DF7561BD8BCB276AA3
            B3B85AFD87FD94BF6ABF09FED8DF07ECFC65E0EBB99ECA591AD2FAC6EE3F26FF
            0044BD8F1E7595DC593E54F192032E70410CA595949FC1BFDA0BE187C2EFD923
            F6B0D73E1FFC23D361F8DDE38BAD7BFB1F488F5DB65BED1FC3F2BC8B1C568907
            CA9A8DF894ED67987D9E2FB86395C3B27DD3FF0004F1FDB1AE2F7FE0A0DE16F0
            EFF6DE99E228BC61E1EBDF03F89F53D334D82D2D35BF14E8912EA336A3108152
            3781A0BD9EDA3976032AD986E54A54F2DBE1D8FCDFC4AE11CBF1587599E4B877
            4E2E0EA5E568B714AEDB825A2B7C3295A4DC65F1C6CD7EA4C7D69D4D43CD3A93
            DCFE754145145200AF907FE0B49A05D5AFEC89A5F8EED61D42F23F83FE33D17C
            7377696281AE2EAD2D6E3CBB9099E032433C9264F03CAAFAFABE5EFD887C7BAC
            FC7FF187ED53E1EF1A5E7FC24DA1787BE2A5E785B4FB0BE863920B7D2CE87A4C
            AD69B76E1A32F733921B39F31B24D0AFD0F4727CC3EA38EA58CB5F9249DBBA4F
            55F35747E487C00F81BFF0C4CB7DE3EF1878822BAD7A259353BEF11DBC8659EC
            B469249520FECD99CFCDACEBFE5CA2DA4CEFB5B269AE890CEAD1D7BAF185E7EC
            D5F0C359FDA4BC69E4FF00C3407C7CB9BBD43E1EE9C1181F09E9D3BBF9FAF6C7
            E57723986CB230A9B2452E0B797EFBFF000564FF0082747C4ED1FF00B261D42E
            3C4DE32F847E0DB6587C2BAA695602FA6F085BAC51C5F64D534E8806BA856385
            00BE855A7088565597E50BF02FC70B5F197ED09F126F3C55AEF8F3C03E2AD46E
            D5207B95F1469FA6258C310D91C0B6B74F6F25BC71A8C089620179E3393551B5
            FDE67F5EF08CB0B9F258EC5E2A36A96F6AAFAFB38D9C28AD1249BFE22D1DA2A2
            A2D4A53969FC12D397F67DFD94BC49F14203F66F13789AFE5F87FE11656024D3
            E36B5F3357BF4046E0EB6B343688EB8286FE461F30465FAB3FE082FF0008350D
            6BF6AEF853243198E1F0A41E20F1E6A25532B1DB5E59C5A3D842DFDC91D96EE6
            00FDE8BCA23AD70DFB317C229FF695FD9774BF839A5780CFC62F157867C5B2EB
            DA0EABE1CD4A5B7D07468AE638E3BB8356D41A2589AD9DA18DCA5AC8D33F9655
            5E32149FD89FF827A7EC2563FB127C31BE86E6FA1F1078E7C593457BE26D6A38
            1608669238C4705A5AC600F26C6D63FDD4108C2C68380A0ED15CD16AC8F0BC4C
            E3CC3D0C063307BD7AF39456A9FEEEDC90B25AA82836F54AF51B6934DB5F4227
            5A753557069D59B3F93828A28A002BE23FD863E32784BE02F8B7F6CAF1278E3C
            55E1BF05F876D7E3B5CA4DAAEBDA9C3A6D942CDA0682AA1A699950124A8009E4
            918EB5F6E57E69FEC05FB13FC39F8DDFF0527FDAEBE2378DA0D3FC71ACF84FE2
            77F67787FC3DACAADF58F855DF4AD2E69B54B7B590B451DD5D18E08BED1B0481
            74E0AAF82E2803EFEF84BF1CBC17FB41F8493C45E01F18785FC6FA148ED0AEA7
            E1FD5A0D4ECD9D4E1944B0BB26E041046720D66E9BE1CF86DF1E2D23F105AD8F
            817C6902CF2431EA70DBDA6A48258DCA48A2550DF3248ACAC33956520E08AF90
            7F6A5F831E16FD88FF00E0A3DFB3A7C45F85361A7F8435EF8CDE2C9BC03E37F0
            DE890C76765E31D3DEC6F6F46A7716C9846B9B19E156FB484F30A5C94772BB56
            B7FF00E0DEFF002EDFFE09B9670ED58DEDFC6FE2E8E44031E5B0F105F7CA47AE
            3141A53A93A6F9A0DA7E4EC7A9FEDB3FF050EF86FF00B097EC9FF113E204DACF
            84F539BE1EC5359C3E1FB7D66DADA5BCD5C4265834AE0B18A793862BB19D63DC
            FB182E2BE6BF887FF058EF13FC06FD92BC217DAF78CBF65CF167C68F8A3E31B7
            F0F68365A0F8C3CAF0C7872DAE0331B9D4AE1A479DE1B5F2A559A58914177890
            282727E68FDAC3C25A278BFF00619FF82A7DC6A1A4E93AA49A2FC4996FB4F92E
            AD23B86B0BA5D334F8BCE88BA9F2E50B24ABBD70C03B80464D7D27FF000527FD
            93BE15E81A27EC68B63F0C7E1DD8A6A9F1B3C39A7DDADBF86ECA35B9B69B4FD4
            A496170B180D1BC8A1990FCACCA09048A0CEEDEACFB3BE1FFED01A7F837F65AF
            0FF8E3E267C42F85D1DBB6990DC6ADE2AD37524B1F0BDC48C3996DE69E560206
            3F74B48D91DEB6BE09FED43F0DFF00697D3AF2F3E1BFC42F02FC41B3D3E5105D
            CFE1AD7AD7568ED6420109235BC8E158820E0E0E08F5AFCD3F8A76DACF8F7FE0
            B1DE3DF0DC3FB2FEA1F1A3C0BFB36F85BC3967E04F0AE9FAA685A5787B409B51
            8A5BB9756165A8CD0C525C178BECD0C9086108B37C85728C363E377C3EF8D5E2
            BFDA97E10FC54F86BFB206B5F037E20787FC556969E24F122F8B3C271DAF89BC
            3772D1C5A869DA8C56B7FBEF14471C52C2192478A4B753105639A00FA4FF0066
            EFF82AC784BE3E7EDFBF15FE14DBF8CBE16DE786FC33A7F8727F076A1A6F882D
            E7B9F13DC5FC1772DD451E266598C5F674C2C2BB94365B3B857D7713EF5AFCDD
            FD873F633F83FE0DFF0082D97ED45068BF093E17E911780B43F035E78656C7C2
            9616DFF08F4F3DB6A4D3CD6852206DE490805DE3DACFB1724ED5C7E9144A5579
            FD28031F53F881A2E8B652DC5E6B3A4DA430DC1B49249AF238D23980DC636248
            01C2F3B7AE2BE23D6BFE0937FF000AF7E3FF00C47FDA07E1A7ED05ADFC2FF1E7
            C4BD70EA97FAB0B2B6D43C3F79A63DADB430D85D594F279371E54B1492C5728D
            148A6EDD7E618AF29FF826EFFC13D7E147ED37FB617ED91E38F899E0DD13E234
            BA67C68D5B45D2749F135B2EA9A3E923ECD672CF710D94DBADC5C4C5E25798C6
            64DB6E8A180DC0D7FD99BFE09A5F0BFC43FF000559F8E7F0BF5AD1E4F11FC13F
            843A7689E28F087C35D6276BFF000AE87A9EB90DC0BC9E3B19331320FB1318A1
            903C50B5D4CD1AA161800FA97F656FF827CAE99FB4043F1D3E257C5CD53E3D7C
            4AB1D3E6D17C3FAABDA5B69BA27866D24204EB61636E5A38E6976ED967677919
            405CA8C83C47897F604F16FECF9F16FC7537C1BFDAA5FE0CE87F13B5BB9F15DF
            785B5AF0F69DE218EC754BC666BABAD3DAEA4492149A5FDE18489230FBCA800E
            D1E33F19F50B0FF8240FED89F1EFFE14AF87F4BF0E784F56FD9D759F8AA7C256
            76CC345B4F116917915B43750DA232C76F14B15D28B84842065B746E08E7DCBF
            670FF822F7C07BFF00D9E6CDBE2AF81FC3BF1B3E20F8DB4D8AFF00C5DE36F19D
            82EA5ADEAF7D7102F9D243712EE92C625CED8A2B674112AAE097DCEC01CDF877
            FE08BFE13F04FEC7FF00B497C1F9BE31F88F565F8F7AC8D575BD7F5CFB3DCEA9
            A65DDC476EACD290C8B2BCCF16F19118FDEE154002B6BFE0AE9AEF87FC11F083
            E036B8DAB5A5FDC7C2DF8C7E13BF8ECD2F228CDD31BA7D21FCD3C98D63FB6BBB
            100FCD08538C923F353F686FD9DE4FD9B7F66EFF008283FC3B8FC65E24F14278
            77E227C33B0D3B5EBED40CFAB41684E9E6D22373804CD6B03C502BE0106007B5
            7D7BFF000577FF00824EFECEBF087F64DF87B2E8BF09FC34B79A77C40F0A787A
            2BFBA335DDF496379E2289AEE29279646925F39AEAE4B976627CE7E7A6003DA3
            F69DF80DE23FDA23FE0A37A7EBDE01BED4FE11EB1E17F8702E6CFE3268F7563A
            95AEAF136A444BE1FD434C9815B9B5503ED2B26E431BEEDAEA720ED7C35FD847
            FB5FF688F05FC40F8FFF001EA1F8E5E29F079FB67813477D32C7C3FA1E8D713A
            ECFED08AC61773757447114D2BB88F7131A86DACBF32FC76F81FE10FD9DFFE0A
            21F1D3C1BE09F0EE99E1BF0AE83FB196A76F61A659C5B60B68DF56BF91954727
            05DD988F5635E91FF04D5FF8234FECE3F15BFE095DF08E7F1A7C33D17C71E20F
            88BF0FF44D5F56F13EBE9F6DF104525C6996CCB1DAEA0DFE91670DBA6C8A08ED
            DD1628E24032773300779FB2BEBF65E1EFF82D5FEDAB797D796B63696BE19F87
            CD34F7132C51C23ECBA97DE66200EA3AFA8AFB6B41D76CFC4BA4C37DA7DE5ADF
            D95C0DD15C5B4AB2C528E99565241E411C1ED5F8D7E01F85DF14BF6C8FF8257F
            EC9DF11357F09C9FB43689F0DFC49AB8F899E0932C31EA3F11ED349BCD474DD3
            6EA56B8702FA4B436EB31B499D85CBC8410E783F637FC11BD7E05FF627C5C97E
            067FC26BE0DB3BFF00150BCF12FC2DF11E9EBA4BFC35D55E0512430D87961AD6
            2B80AB2ED592583721584A0464500F62FD8B7F63EB8FD937C59F1BB529B5F875
            B5F8B9F112FBC751469686DCE989716F6D0FD998966F30AFD9F3BC6DCEFE9C54
            DF087F649B9F865FB74FC64F8C326BD0DE5B7C54D1FC3DA5C5A5ADA18E4D34E9
            6978ACED2EF224F33ED59002AEDDBDF35EE5B47A5215F6A00F893E2EF81347F8
            A5FF0005CDD37C33E22D3AD758F0FF0088FF0066CF11697A9D85CA6E86F6D67F
            1069514B0B8EEAE8CCA47704D57F087EC59FB55FECBBE11B7F86FF0007BE377C
            35B8F85DA7A2D8F87AE3C73E13BAD47C45E0DB05F962B58A586E6386FD618F0B
            1B5C2A10AAAAC580C9F5EF187EC95E22F127FC14A34FF8C10EAD6B61E1BB7F84
            DA9F809841211A9C37B75AA595DA4F1AB218F62476CFCB1243EDF948C91E6761
            FF0004E2F8B7E17F073693E1DF8D36BE1B8DAEDEE5D749D36F6D048CC2D44D33
            30BD2D25C5D0827DF24C65F28DD9740D3234D28078EE9FFF0006FB6A5A37C05F
            8F7E0B6F8CD7DAF5FF00C70F14786BC5979AFEB3A4F9D78B7DA74B05CDF492AA
            48AAC2E6E5267454DA2149153E7D9B8FD8DFB787EC9F71FB65FC20D0FC2F6BAE
            43E1F6D23C61A0F8A4DC4B6A6E04A9A76A305E3421432E0C822DA1B276EECE0F
            4AF35D3BF600F8AD6175636EDF1FFC4CFA5FF68DADD5F2C2D7F0CAD6AAF6AD7F
            67016BD731ADDF953ED95D9E5B412ED85C02C69D6FFB07FC65BAD3F5EFB77ED1
            7E25FED0BA889D2EEAD20B8863B5BA32330B9921372519442D15BFD9D76C3FE8
            C27DA269E62402D7C77FF82725EFC64FDAEBE257C4D8FC5B6DA7C3E3EF82B73F
            0963D39B4E691ACA596EA79C5F193CC019479DB7CADA09C6770E95ED1FB217C0
            F93F664FD93BE17FC359B518F589BE1EF84B4AF0CC97E909856F9ACACE2B6330
            4258A07316EDA49C67193D6BC4B56FD82BE266BFF0A3E20785AFBE314F711F8A
            21D3A1D3265B3B98D74D16D7CF70E4442E4C71EFB736F68521091B8B6F365595
            A6916B5B5EFD8A7E23EB1E2B975EB7F8C3368BE26BAF0EE95A35CEB5A768ABE6
            4925BC33C774E905C4B32A472C930B9442EDE5CB0C61CCE864120078B7807FE0
            90DF113F673F809F05E3F85FF1634AB1F8A9F04B52F11DC5BDD6ABA44D27877C
            5761ACEA5717B358DF5AA4BE6A6CF3A309346E59191C81F3FCBEDBFB027EC3DE
            20FD9D7C6BF14BE267C46F14697E2EF8BDF1B2FAC2F3C4D77A2D83E9FA359436
            16C6DECECECE091DDF6451BC999646DF217C90302B94B5FF00827C7C5E97C35A
            6AEA1FB43789EF753D3D656640D7B15ACDFBD568212C97626DAB13DDC0D31733
            30B98E4DC25B681D3DCFF657F83FE32F833E10D5AC3C6BE3A97C7D7D7B7F1DCD
            B5EC904B0B5B42B656B0345892694E0CB0CB2F047FAE3905B73B007FFFD9}
        end
        object RLDBText10: TRLDBText
          Left = 90
          Top = 49
          Width = 188
          Height = 14
          AutoSize = False
          DataField = 'HOMEPAGE'
          DataSource = dmCupomFiscal.dsComandaRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 90
          Top = 63
          Width = 188
          Height = 14
          AutoSize = False
          DataField = 'EMAIL'
          DataSource = dmCupomFiscal.dsComandaRel
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 267
        Width = 279
        Height = 18
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        DataSource = dmCupomFiscal.dsComandaItem_Rel
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 279
          Height = 15
          object RLDBText6: TRLDBText
            Left = 0
            Top = 0
            Width = 41
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            DataField = 'QTD'
            DataSource = dmCupomFiscal.dsComandaItem_Rel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText7: TRLDBText
            Left = 41
            Top = 0
            Width = 176
            Height = 14
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            DataField = 'PRODUTO_NOME'
            DataSource = dmCupomFiscal.dsComandaItem_Rel
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText8: TRLDBText
            Left = 216
            Top = 0
            Width = 59
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = True
            DataField = 'VLR_TOTAL'
            DataSource = dmCupomFiscal.dsComandaItem_Rel
            DisplayMask = '0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object RLBand3: TRLBand
      Left = 0
      Top = 292
      Width = 279
      Height = 68
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand3BeforePrint
      object RLBarcode2: TRLBarcode
        Left = 88
        Top = 1
        Width = 104
        Height = 66
        Alignment = taCenter
        BarcodeType = bcEAN13
        Caption = '555556789012'
        CheckSum = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        ParentFont = False
        ShowText = boCode
      end
      object lbDtEmissao: TRLLabel
        Left = 0
        Top = 51
        Width = 78
        Height = 16
      end
    end
  end
end
