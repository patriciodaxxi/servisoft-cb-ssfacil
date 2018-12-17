object fRelDanfe_NFSe_Poa: TfRelDanfe_NFSe_Poa
  Left = 291
  Top = 17
  Width = 896
  Height = 679
  Caption = 'fRelDanfe_NFSe_Poa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 48
    Top = 80
    Width = 794
    Height = 1123
    DataSource = DMCadNotaServico.dsmImpNota
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.TopMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    BeforePrint = RLReport1BeforePrint
    object RLSubDetail1: TRLSubDetail
      Left = 26
      Top = 26
      Width = 742
      Height = 1007
      DataSource = DMCadNotaServico.dsmImpNota
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 742
        Height = 283
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        BeforePrint = RLBand7BeforePrint
        object RLDraw34: TRLDraw
          Left = 0
          Top = 2
          Width = 169
          Height = 63
        end
        object RLDraw19: TRLDraw
          Left = 0
          Top = 64
          Width = 742
          Height = 88
        end
        object RLDBText3: TRLDBText
          Left = 160
          Top = 67
          Width = 577
          Height = 14
          AutoSize = False
          DataField = 'NOME_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 160
          Top = 101
          Width = 577
          Height = 12
          AutoSize = False
          DataField = 'ENDERECO_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel69: TRLLabel
          Left = 160
          Top = 113
          Width = 25
          Height = 12
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel73: TRLLabel
          Left = 480
          Top = 82
          Width = 111
          Height = 14
          Caption = 'Inscri'#231#227'o Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw53: TRLDraw
          Left = 0
          Top = 176
          Width = 742
          Height = 81
        end
        object RLLabel1: TRLLabel
          Left = 3
          Top = 161
          Width = 625
          Height = 14
          AutoSize = False
          Caption = 'Dados do Tomador de Servi'#231'os'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText56: TRLDBText
          Left = 66
          Top = 181
          Width = 142
          Height = 13
          AutoSize = False
          DataField = 'CNPJ_CPF_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel83: TRLLabel
          Left = 4
          Top = 180
          Width = 58
          Height = 14
          Caption = 'CPF/CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 519
          Top = 181
          Width = 110
          Height = 13
          AutoSize = False
          DataField = 'INSC_MUNICIPAL_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 405
          Top = 180
          Width = 111
          Height = 14
          Caption = 'Inscri'#231#227'o Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText53: TRLDBText
          Left = 4
          Top = 195
          Width = 700
          Height = 13
          AutoSize = False
          DataField = 'NOME_CLIENTE'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText64: TRLDBText
          Left = 55
          Top = 239
          Width = 45
          Height = 14
          DataField = 'DDD_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel102: TRLLabel
          Left = 4
          Top = 239
          Width = 48
          Height = 15
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText65: TRLDBText
          Left = 91
          Top = 239
          Width = 51
          Height = 15
          AutoSize = False
          DataField = 'FONE_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel103: TRLLabel
          Left = 405
          Top = 239
          Width = 30
          Height = 15
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText67: TRLDBText
          Left = 437
          Top = 239
          Width = 292
          Height = 15
          AutoSize = False
          DataField = 'EMAIL_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 261
          Width = 742
          Height = 22
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 265
          Width = 625
          Height = 14
          AutoSize = False
          Caption = 'Discrimina'#231#227'o do(s) Servi'#231'o(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 221
          Top = 82
          Width = 185
          Height = 14
          AutoSize = False
          DataField = 'CNPJ_CPF_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLImage3: TRLImage
          Left = 4
          Top = 67
          Width = 150
          Height = 81
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Picture.Data = {
            0A544A504547496D616765DA0E0000FFD8FFE000104A46494600010101006000
            600000FFDB004300020101020101020202020202020203050303030303060404
            0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
            0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080040003403012200021101031101
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
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDF3
            D5F57B6D074CB8BDBC9E1B5B3B48DA69E79A411C7046A0967766202A8009249C
            00335CB7C3DFDA1BC0BF166FF5AB5F0BF8BBC37E229BC3617FB57FB37518AE97
            4FDCD2A012B46C554EE8265209C831383822B97FDB77F668B2FDADFF0066CF11
            7826E21B66BFBA48EF7479E69A4B7165A95BBACF692F9D17EF62026450CD1FCD
            B19C0CE483F93DF03BC16BA26AB3789758F87D27887C2D79786D0596B37B1782
            3459EEE1648FCB49E5165F65BCB47935480C56D1DCC521B7307930A24376F329
            59932958FBC7C67FF05ABF871E0DD63FB3EE3C29F1196FA4964B682DE4B0B486
            49EE1269A068421B8DEAE25B6BA53BD5554DACEA583C656BD67E3FFEDEBE03F8
            07E07FEDA9AF975E58EFADAD26B7D36783CE8D679844B2E25745650CCA78272A
            E8FF0070EFAFCFAF0DFEC51E28D5347BD8B4FB1D2745B3F133EA22FEC2D7C3BA
            B7883479C5C4255F613A334463498C5E587949686CAD637791A24953D1B5CFD8
            CFC41E29D2F47B3D4344D02DAC340B8F3B4F6B0F8537767787E665DF73771179
            669560678D24586328D209F06E228668E632B993A92E87D33FB2D7FC150FC07F
            B547C454F0CE93A66BFA3DF496935CA4BA9BD9476F2B45706DCC49B6E1A4691A
            58EE42011F22D27C9528547A6E9DFB5F7C32D4FC7DAB785E3F1C786E1F116877
            A74EBBB0B9BC5B6956709BCA2799B44A42EEC98CB0052452772381F9F3E1EF82
            BE2AF84B26B1AB6ADA3F853C5706B1611E997EFE224D4FC136F0C564B09B5992
            4974CB48D9E27374CB11B88A368A4B7B759218ED2392BCEFE0DFEC5D7DF17BF6
            A1F06784F58D2564F0CF8816E6FEE5E7856EB49BBD16DEE552E62B010C9736FE
            47D9E0D26D99CDE34B0C9A841B7CF9AD7ED71D295CAE696C7EC899B1DA8A4F2B
            7019241F4068AA3509C653F1AFC4FF00DA97F6D7F89FF00BF6E1F8AF1782FC51
            61E15FB3EBD77629269FE13D096E0C25D652AF70F62F3CBBA462EC64918B3B12
            4E6BDEBFE0E41FF82A2FC5AFF8266785FE12DF7C2CBDD16D65F175DEAB16A035
            2D3A3BC8E516C9692C4A0B636EEDD221C1C9491F18708E9F11FEDD7AF4771FB5
            97C58D62FA16B1075C9EF6E97709BEC80C4923AE5786DBC8C8EBB78F4AF95E2C
            C556A3858FB09352E64B4DF54CFDF3E8E393E539A71357C3E734615694684A56
            9A4E29A9435D74D137A9DA7FC3D8FF006969DFF77F17F5C6627A0F0E6827FF00
            71F47FC3D6BF69891E41FF000B935C5F2412E0787340F931EB9D3F8FC6BE7AD0
            BE0D4373E15D1FC6DF152D2FAF340D62F11FC3DE0B85E15B5F165AC2D326A105
            C5EDBDE79B63E4C82DE29677B799F75C836B11C3C8AC87C11F08E3F0C7865AEB
            E18E8B730DFD9EB11C171A6788BFE26F6D325C2A43777A3ECEB05C4D6CCC92DB
            430AD9473AA8595BCB66CFD3657E16F10E230F4EA55C4CD4AA49C528AE65CC93
            938F34A71BC928EBCAA493D2EDE869C53F487F0C3018FAB86CAF20A15A953577
            39B8D36E3751535054AA35177BC5C9C5B5AF2A5A9F6C7ECDFF001FBF6DFF00DA
            9E3B5BEF0BFC4BF115B7876E86F1E21D5B41D06CB4B950F2AD0B8D31A4B90D83
            B5ADE3913230EF1E413F6A7EC4FF000B7C43F09BF68DD4E2F1778DBFE16178AB
            C43E1A3A86A7ACC9E14D1B44695E3BB8E35D86CED92E194863B96E27986554AE
            CE457C87FB05FEDA9E2EF86DF18BC27E00F1C78BAF3E227C3FF89719FF00841B
            C5FAA7D9E0D63ED3147125C417708BCB9B948C5FFDA2D07DA99A513A00924D13
            30B7EFFF00E0AEBFB6278D7F611F859E2AF88DF0F64B2B6F1558F85ADACED6EE
            EED96E63B459F5BB28A593CA61B64611C8DB436002771276ED6FE6F8E73C6B95
            F89D438633C9A8E1E50A938F23725520A32B49CA494AF1945A946D17192B34F4
            67E73C45C6581E21C1BC6E0F07470D08BF829D38C5A7A6F25772BA69A77E569A
            6923F4EC74A2BE78FF0082607ED2BAE7ED79FF0004FBF84FF12BC492DBCDE22F
            176851DE6A6F6F07D9E16B90EF1CBB23E76A6E438E4F18393D68AFE948D9AB9F
            0B1D55CFCDFF00F83CC3C3D7973FB3DFC15D4E38E36B0B7D7356B095999576CD
            3D8A98BAAEEC1F2A4E030070010C4864F53F01FEC47F0E7F6A9FD99FE2778AF4
            9D1ACF5EF1D78F34BBFB4D2751D4CFDA23D38CDA747F607B7864630C0CD0C96D
            279C0094ACC7F7817685FA9BFE0B35FF0004FC6FF828F7EC27E21F03695F6687
            C69A5CF17883C2771718F2A2D4EDC3858D89202ACF0C93DB976C84FB46FC1280
            57E5DFFC10DBFE0A503E1CD95CFC1DF1F5A6AFA6F8D7C28A746BDD09B4CB8935
            5BF4B0536F14D6D6C81A69EF6D21856C2E2CE24799A0B3B06823636F74B5F91F
            8C996E7789C89D4E1F72FAC529C2A28C6F79A83778596FBA7CBF6B96DB9D9956
            33EAD889C253718D58B83B36AE9DAE9DB75A2D1E9D7A1E6369E1BB8F881F0B7C
            3B3693A4CD06BDF0E2DA6F0E7887458741B7D32F20F2E7BCB84BB68629E496F2
            E142DDA5F4E618E589ADA369A255DF31C9F1A7C49B6F18782FE17FC3FF000CEB
            B71E2BF111FB04F7FA4D8AC57924C0E9F2456FE4456FBE5B87010EEE37C4B181
            F36F26B6BFE0A17FF0519F007ED3FF001834FF00197C22F08DF7857C45A6DDC3
            743C7725EBDADEEB06D81F2DC5A40DE5829B22D974F2FDA42C6B1958D5401E29
            AFFEDC5F1B3C73E0793C33AE7C5CF1A6ABE1DBAD36E748934B9F54BB314D6575
            BD6E609CFDA09BC0EB2B26EBC3398D76A465111547ED1C3FE352C6E5D97E2730
            8BC2D6A12751D2945C9A949F338A9536D38DD697E492526A495AE7E378CC2E57
            86C4632939BA9EDA31839475568AE54ECD692B6FF146F1BAD5D8F47F8FFF0011
            66FD9BF45F873A46993693278EBC2BAF43E2E918E8D637696175E6596A36691E
            A31CD23DE59FD924859E38CA5B0B9DCCB2DC092275F3DF8FBFB4778C3E397EC7
            5F1FB5BF1F78BF5EF126A5AA5EF84B478E7BCB88DC44CF7D797AB0C70A8586DE
            364D3AE5F64491C5BA2C903273E7FE0FF056A9F12BE205BE8BA2E9FA97893C55
            E22966104102ABDCDE1526591C8F952389033CB23931C3129924768D43B8F62F
            845FB245C7FC146BF683F017ECCBF0D753B7D6BC31E1BD5DBC5DF147C79604BE
            9D77745121716B281BDED6CED849676B202AB75757B753AAAC122BA7C8E699BA
            E21CF7FB6234ED1846518CDC52949CE4E52DAF64DC9BE54DA492BB6F53D1E1AF
            6F39F2D2BC68C52495DD9B49457AD92577EAECAF63F75BFE08D1E0A9BC17FF00
            04A3FD9F6C6EA186399BC11A7DE158C96502E23FB42F24039C4A339E739E4F52
            57D25E0EF0769BF0FF00C23A5E83A2D8DBE97A2E89671585859C08162B4B7890
            4714483B2AA2AA81E80515F454FDD8A47E8D1492B195F1CFE29DBFC0FF0082DE
            2EF1A5D5ACD7D69E11D12F75A9EDA165592E23B6B79266452D801984640278C9
            E78AFC14FF0082A6FC74FD91BFE0A23E306F1237877E29FC21F8E91FD90CBE22
            D274FD3F50B7BDF282B42D7D025FC5E7491C6C025C44C970AA912969238D61AF
            DF8F89DF0F34CF8B7F0E75EF0AEB51CD368FE25D36E74ABF8E295A1792DEE226
            8A401D4865251D8061C83822BF39FE217FC10CFC65F0DBE20F88755F82FE35F0
            CC7A26BC8889A378B20799AC408A1464FB418AE04A0C9179818C48E036CCB004
            B7D470E61F23AEAA52CDE4E12D1C65AF2F5BA7CAA4D37A59F2B4B5BF43E63892
            59C4392796414E3AF3474BDEEACD5DA565ADD5D3DAC7E52780FC03FB447C6AF0
            2DFF008A6FBE18F813F694D2B4FD45B4EB8F12FDBA5D3FC4D2CB1431B12F25A5
            E595FDFC8639102CB7D05E61828DDC08C6EE9BF087C5D35958DAC7FB08FC62B8
            D6F50C2DBBEA9E3F9E1D0E4F98053308EC6DA58907462D7B09F97707DA495FD3
            DD43FE0929F15B5FD423BBD5FC21F01F50922D49EF562FED8455317912449092
            7C3BF3052C8D91B41D8C3683233541A47FC122BE2768F6B79F66F873FB374334
            CA82D8CD7E26101F34349BFF00E2440B6E8D51004D8018F71DDB9857362383F2
            2AB55D458A8795E29B5F3766EDE878BF5AC64BDEAF97B94BBFBAFEEDF7F567E5
            E7C45F865E37F0ACB2FC3DF8D5E21F0DFECEFE0BD5ECEDEFB55F047C30D321D6
            758F10D9896511ADDEA1F6E91AE4B3472009A86A530899524FB3818DDFA2FF00
            F04CDFF828F7ECB7FB2FE9FE13F84BF01BE12F8E34C5F11EB3A5691A96A5AAFD
            81350BB9EEAE45BA5DDECCB7123CC434AEF841B143384540429EBB54FF008253
            7C7858A2B6F0FE9FFB3FF862DE695A7BA7170D7B279864F33E453A2C69B376D2
            23236AEC017E5F96BD13F656FF00822559F80BE297FC275F14BC551F8BBC4567
            A8E9DABE936FA2453E956BA6DD5ACE6E0BC844A7ED2AF208BE568E300467218B
            92BEFE1F28E14C1E0A53AF5DD4AA93E550BEFAA5A72A8A49D9BF79BB5F4B99D3
            C571255C4C6187C3AA74EEAEE5CBA455AEB46DDDABA568A57D4FBE233941452A
            2ED5A2BE04FD18FFD9}
          Stretch = True
        end
        object RLLabel29: TRLLabel
          Left = 384
          Top = 138
          Width = 29
          Height = 12
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel35: TRLLabel
          Left = 8
          Top = 24
          Width = 22
          Height = 19
          AutoSize = False
          Caption = 'N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel37: TRLLabel
          Left = 182
          Top = 6
          Width = 374
          Height = 18
          Caption = 'NFS-e NOTA FISCAL DE SERVI'#199'OS ELETR'#212'NICA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel38: TRLLabel
          Left = 198
          Top = 30
          Width = 56
          Height = 14
          Caption = 'Emitida em:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 198
          Top = 46
          Width = 69
          Height = 15
          Caption = 'Emitida em:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 414
          Top = 30
          Width = 65
          Height = 14
          Caption = 'Compet'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 414
          Top = 47
          Width = 100
          Height = 12
          AutoSize = False
          DataField = 'DTEMISSAO_CAD'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel42: TRLLabel
          Left = 590
          Top = 30
          Width = 110
          Height = 14
          Caption = 'C'#243'digo de Verifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 590
          Top = 47
          Width = 100
          Height = 12
          AutoSize = False
          DataField = 'COD_AUTENCIDADE_RET'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 4
          Top = 210
          Width = 49
          Height = 14
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 4
          Top = 225
          Width = 388
          Height = 13
          AutoSize = False
          DataField = 'CIDADE_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 405
          Top = 225
          Width = 99
          Height = 13
          AutoSize = False
          DataField = 'UF_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel36: TRLLabel
          Left = 32
          Top = 24
          Width = 22
          Height = 19
          Caption = 'N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 160
          Top = 82
          Width = 58
          Height = 14
          Caption = 'CPF/CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 415
          Top = 138
          Width = 322
          Height = 12
          AutoSize = False
          DataField = 'EMAIL_FIL_CADASTRO'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 595
          Top = 82
          Width = 141
          Height = 14
          AutoSize = False
          DataField = 'INSCMUNICIPAL_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 161
          Top = 138
          Width = 27
          Height = 12
          Caption = 'Fone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 190
          Top = 138
          Width = 31
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DDD_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 224
          Top = 138
          Width = 113
          Height = 12
          AutoSize = False
          DataField = 'FONE_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 161
          Top = 125
          Width = 217
          Height = 12
          AutoSize = False
          DataField = 'CIDADE_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 385
          Top = 125
          Width = 32
          Height = 12
          AutoSize = False
          DataField = 'UF_FIL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 318
        Width = 742
        Height = 33
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 742
          Height = 33
          Align = faClient
        end
        object RLMemo1: TRLMemo
          Left = 7
          Top = 4
          Width = 729
          Height = 14
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 422
        Width = 742
        Height = 198
        BeforePrint = RLBand2BeforePrint
        object RLLabel8: TRLLabel
          Left = 9
          Top = 61
          Width = 126
          Height = 16
          Caption = 'Valor dos Servi'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 259
          Top = 61
          Width = 80
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_TOTAL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw15: TRLDraw
          Left = 0
          Top = 162
          Width = 742
          Height = 36
          Align = faBottom
        end
        object RLLabel17: TRLLabel
          Left = 5
          Top = 165
          Width = 625
          Height = 14
          AutoSize = False
          Caption = 'Reten'#231#245'es de Federais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw17: TRLDraw
          Left = 0
          Top = 2
          Width = 742
          Height = 53
        end
        object RLLabel39: TRLLabel
          Left = 5
          Top = 5
          Width = 220
          Height = 14
          AutoSize = False
          Caption = 'C'#243'd/Munic'#237'pio da incid'#234'ncia do ISSQN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel43: TRLLabel
          Left = 413
          Top = 5
          Width = 220
          Height = 14
          AutoSize = False
          Caption = 'Natureza da Opera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 5
          Top = 20
          Width = 84
          Height = 14
          AutoSize = False
          DataField = 'CODMUNICIPIO_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel44: TRLLabel
          Left = 92
          Top = 20
          Width = 6
          Height = 14
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 101
          Top = 20
          Width = 300
          Height = 14
          AutoSize = False
          DataField = 'CIDADE_CLI'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 413
          Top = 21
          Width = 324
          Height = 14
          AutoSize = False
          DataField = 'NOME_NATUREZA'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel45: TRLLabel
          Left = 181
          Top = 38
          Width = 220
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Regime Especial de Tributa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 403
          Top = 38
          Width = 324
          Height = 14
          AutoSize = False
          DataField = 'NOME_REGIME_TRIBUTACAO'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 401
          Top = 61
          Width = 126
          Height = 16
          Caption = 'Valor dos Servi'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 643
          Top = 61
          Width = 80
          Height = 16
          Alignment = taRightJustify
          DataField = 'VLR_TOTAL'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 9
          Top = 80
          Width = 73
          Height = 14
          Caption = '(-) Descontos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 9
          Top = 97
          Width = 118
          Height = 14
          Caption = '(-) Reten'#231#245'es Federais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 9
          Top = 116
          Width = 115
          Height = 14
          Caption = '(-) ISS Retido na Fonte:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 218
          Top = 80
          Width = 121
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_DESCONTO_COND'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 315
          Top = 97
          Width = 24
          Height = 14
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 251
          Top = 114
          Width = 88
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_ISS_RETIDO'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel33: TRLLabel
          Left = 9
          Top = 133
          Width = 94
          Height = 16
          Caption = 'Valor L'#237'quido:'
          Color = 14737632
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText30: TRLDBText
          Left = 207
          Top = 133
          Width = 132
          Height = 16
          Alignment = taRightJustify
          Color = 14737632
          DataField = 'VLR_LIQUIDO_NFSE'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel49: TRLLabel
          Left = 401
          Top = 80
          Width = 70
          Height = 14
          Caption = '(-) Dedu'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 638
          Top = 80
          Width = 85
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_DEDUCOES'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel50: TRLLabel
          Left = 401
          Top = 95
          Width = 142
          Height = 14
          Caption = '(-) Desconto Incondicionado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 615
          Top = 95
          Width = 108
          Height = 14
          Alignment = taRightJustify
          DataField = 'VLR_DESCONTO_INC'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel51: TRLLabel
          Left = 401
          Top = 111
          Width = 110
          Height = 14
          Caption = '(=) Base de C'#225'lculo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 633
          Top = 111
          Width = 90
          Height = 14
          Alignment = taRightJustify
          DataField = 'BASE_CALCULO'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel52: TRLLabel
          Left = 401
          Top = 127
          Width = 62
          Height = 14
          Caption = '(x) Al'#237'quota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText34: TRLDBText
          Left = 635
          Top = 127
          Width = 88
          Height = 14
          Alignment = taRightJustify
          DataField = 'PERC_ALIQUOTA'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel53: TRLLabel
          Left = 401
          Top = 143
          Width = 108
          Height = 16
          Caption = '(=) Valor do ISS:'
          Color = 14737632
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLDBText35: TRLDBText
          Left = 664
          Top = 143
          Width = 59
          Height = 16
          Alignment = taRightJustify
          Color = 14737632
          DataField = 'VLR_ISS'
          DataSource = DMCadNotaServico.dsNotaServico_Imp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLMemo5: TRLMemo
          Left = 5
          Top = 181
          Width = 729
          Height = 14
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 620
        Width = 742
        Height = 38
        BeforePrint = RLBand3BeforePrint
        object RLDraw33: TRLDraw
          Left = 0
          Top = 0
          Width = 742
          Height = 21
          Align = faTop
        end
        object RLLabel27: TRLLabel
          Left = 14
          Top = 4
          Width = 433
          Height = 14
          AutoSize = False
          Caption = 'Outras Informa'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo2: TRLMemo
          Left = 0
          Top = 20
          Width = 742
          Height = 18
          Align = faBottom
          Behavior = [beSiteExpander]
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 283
        Width = 742
        Height = 35
        BeforePrint = RLBand4BeforePrint
        object RLDraw36: TRLDraw
          Left = 0
          Top = 0
          Width = 742
          Height = 35
          Align = faClient
        end
        object RLPanel1: TRLPanel
          Left = 40
          Top = 5
          Width = 668
          Height = 25
          Color = 13553358
          ParentColor = False
          Transparent = False
          object RLLabel34: TRLLabel
            Left = 208
            Top = 3
            Width = 251
            Height = 19
            Align = faCenter
            Caption = '*** N O T A   C A N C E L A D A ***'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 213
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 658
        Width = 742
        Height = 84
        BandType = btSummary
        object RLDraw37: TRLDraw
          Left = 0
          Top = 11
          Width = 737
          Height = 69
        end
        object RLImage4: TRLImage
          Left = 4
          Top = 15
          Width = 64
          Height = 63
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Picture.Data = {
            0A544A504547496D61676517400000FFD8FFE000104A46494600010100000100
            010000FFDB008400090607141312111212121514141718181414181619181A19
            18181A18171A1D15171E181E2820181F281B18142D312127292C2E302E172033
            3A333837282E2E2B010A0A0A0E0D0E1B10101B2F2420252C342F3230342C2B2C
            342C2D372C2C2C2C2C2F2C2D2E2C2D342C342C2C2C342C2D2D2C2F2C2C302C2C
            2F2C2C342C2E2C2C2CFFC000110800F800CC03011100021101031101FFC4001C
            0001000203010101000000000000000000000406030507010208FFC400491000
            02010203060204080C0503050100000102030011041221050613223141325107
            61719114233342525381A115627273829293B1B2C1C2D143A2A3A4D22454D316
            4483E3F034FFC4001B0101000203010100000000000000000000000304020506
            0107FFC400451100010302030407050505070305000000010002110321043141
            05125161137181A1B1D1F014223291C106425253E1157292A2F1162334628293
            C233A3D2354373B2B3FFDA000C03010002110311003F00EE3444A22511288944
            4A225112889444A225112889444A225112889444A225112889444A2251128894
            44A225112889444A225112889444A225112889445F12CAAA2EC428F326C3EFA2
            013650FF000D61AF6F84C37F2E225FF7D63BEDE2A6F66AD13B87E454B8665617
            560C3CC107F7564A220830564A2F12889444A225112889444A225112889444A2
            25112889444A225112889444A2251140DB5B5E2C2C46599885BE5000B96637B2
            A8F3D0FBAB17BC30495630D85AB89A829D2127D5D738DB5BF58A9466891B0D87
            BDB8B91DB437D4B85205EC74504DFBD547567BAE2C38FAF5CD74787D9584A44B
            5EEE96A0FB8081D6331967722DF7541C56EF138E4C26226925768CBAC97D49C8
            CE029933DC72117D351D2B13441A818E249F5D6A566D2A8DC1BB13876318D060
            8833A5EDBBC42D6C1B3236870F8956711194C5880C559A3CABC42CA555730310
            6205AE08B5CDEA314DAE01C329BF2D7C15E7E3EBD17D4A1520B83658408DE93B
            A2C49BEF1F15EE2F659871CD878CB03C658D194E56CB232E5E603AE565D6BCDC
            DDABBA38A91B8AE9F6774EF009DD27DE12244CDAD991DEACDB376AE3A391D30F
            3FC29239CE1CACEBADF9ACC1C316218A30CC4E86D716B9169A5F2434CC18BF9A
            E7ABD3C2EE35D88A7B85CDDE0586C678B5D61C601BF19569D83BE293B2452C6D
            0CAD70BA8923723A84912EAC477152B6ACD8883EB55ADAF81DC05F4DC1CD19E6
            08EB69BF6891CD59AA55412889444A225112889444A225112889444A22511288
            9444A228F8CC7C510CD2CA918F376551FE635E12066B36537BCC301279095A69
            77D7042E04FC42016F8B477D0753745200FB6B0E999A19EABF82B7FB3712002E
            6EECE5BC4367F8885123DFFC3BFC9458897A0E445EAD7B0E661A9B1B0EA6C6DD
            2B16D66BBE104A96B6CAAB423A773593C493FF00D41556DF4DE95C6E16448609
            D4C456562E10651AC7A80E5BAB8E80DBBD85CD4156A8AAC200365B8D9D80A981
            C4D37D47B487C81049CC5B40386AB4BBDD86CB8C9447E0996268C2FCF88AC791
            47980D18007E20A8AB83D2103585B0D8EEA6704D73F3A65C49E06E49E3F09BF1
            5BF971173B171E48000104EEC4285C8D90962D6005CCDD7D9DEAC19258FF009F
            AF9AD2B4B29B71584E265A2E660C8CB88DDFAAD2A6362870B89C3868DD9E62D1
            81999786070EF9A3D01642D617E835B5C545BCD631C24193D76EC57FA0AD8BC5
            51AA58F686B4026CD3BD736DECC0245E0A9B82DA30C98BC1625A44568E11C656
            252F2C68C1154C96CE4929D09F07B0D64D2D7BDAE9C85FAFB54388A75F0D84AB
            86DC7439D2D363EEC899DD98CB50264F5297BBF31C2603113486F333662015CC
            0BA98D01EB9589691BA6806A35ACD934A9973B355B19B9B431CCA140FBA00683
            1A0924C5B4B738E6AADB1B1D1C18986501CC48F9828219B4501AD7CA0DCAFABD
            83A5556BDAD788C8792E86AE16AD7C239AF8E91E20F010E240B4E527299399D5
            7468FD26614F58B10BEB2B1FF290D5A18B6735CE3BECE62C645A7B4FD4052E1F
            483813D6474FCA8DFF00A41ACFDA69F1F155DDB0B1CDFB93FEA6F9CADB60B78F
            0929CB1E26166FA39D437EA9D7EEA903DA722A854C257A73BEC223915B4ACD57
            4A225112889444A225112889444A22F09B6A688AA9B577E6252D1E1636C54801
            272691A81D59E43A003CC69E645426B09865CFAD56D29ECB7868A98870A6D3C6
            493D4D17F0556C16F3E231AD32BC8E8444F2C51C04461CA0BF0D9882F722FD08
            E95053AC6A483F216FD56D71BB299820C736082402E70DE2275DDF8639104F35
            AADDA712CD2A040924F0B985F52EB32DD95A391CB480154208CDD41B01A0AF29
            BE5D02C48EFEB5363B0DD1D10F79DE6D37804640B6D32D1001DE30233045D6C3
            78A77183C362141867792279980CAC6511CB95987AC266B74E7BF7AF6B39C298
            76467E8A1D9946854C755A07DFA61AE0DD401BC32E77370A4E3765E1E766844C
            98669C438F833784F11195A31A8B7302458DC5F41A1AC9CC6BFDD0626E143471
            788C30155CDDF0C0693BA81045EF19C64440850362E1658717361E7567E23883
            139016CC9324BCF703419991AF616B76ED8D20E6BDC0DE4DFB6559DA156956C2
            D17D376EEEB496C9D5A582399898D4E6B498FDA32C4170F246B24B8676489886
            0EB95BD4C1592E0328606D7EE0DAA22F2DF75C32C8ABCCC336B37A7A4E20551E
            F3445F8DCE599939F055E73882F1DED94154D0E6212E065BB6B6B79562D2D711
            2654D55B5E85371A4D0D104FBA077F15DF5372F0205BE0CBF6973F796ABFD053
            E0B903B5B1A7FF0070AE7DE96F62A618614E0E2C8CED207B1241002DAF9C903A
            FAAA0AF4E9B44C2DAEC9C7E36BD42DDF2604E9F554CC1ED0C4229571643A902C
            C97FA4D1BDD49F5D8DAAB87459A7B16F5F87151DBF5E9DFF0010304759067BFB
            16CB67615B118848C300D2365048D05F5E83B0B0D074B578D1D23E0EAA4AF506
            070C5ED121902E626F73306E49BF3945C13344B3210C86410DF5055C8BAE602F
            CA47422FD083636BBA29120DA6163FB4775C595190E0DDF89065BAC1B5C5EC46
            8BE71B863149244CC85D18A3052DD41B1B66517AF1F4F7751DEA5C363857DD86
            38070904EEE5D8E247290255CF656CE330C361197347F03677CC2E164C43964E
            BE16402E2D6202B5BBD5C6349018728F1F25CAE32B5363EA6258407F4B023834
            5CDB475A78FCD6A7098B28B8A6C0CB2C498708CAC642C2552E10B3A30C82FE25
            B28D0107AE910700D76E5A39E7D992D83F0EE755A3ED61AEE96646E8696E510E
            10E3122649EDCD5AE1DEFC4401462A359470E39A43172CB12BE83891B1CA79B4
            BA916D2E05C5EC74AE6FC57F11D8B4C3034ABBA291DD32409BB5C47074083110
            08BF1D15B3646D98712B9A0903DBA8E8CBEA653A8A958F6BC4B4AA188C2D6C3B
            B72AB60F8F51C8F629F592AE9444A22511288944517696D08E08DA5958222F52
            7EE007524F90AC5CE0D1254B468D4ACF14E9892572FDA5BD0D8B9A2138298276
            64E1A3D988F08790A9EA1994E53A585EC746350D52F237BE13EAEBA6A5B3DB87
            A550D2335A9C3A62DC61B39D81BE64C640C2D562F04F819A0C44644B1E6CF0C8
            05838D4346D7F0365CEACA7CCF91B425A68B83865EACB6747114B69D075178DD
            7C5C703A387298F039825230C1E3629A3D61052788F9C0F7B8F685322FB5691D
            1D404659F62071C6ECF753A9F18F74FEF8223E663B4C05936B1961C739401BE0
            CC24408B6F89CE1D100416B59EDA01D5BD9523F7FA49E1E1C153C27B31C0064C
            74A20827270065D7BDCB41F968B63B6712AE71782E26702413E1593E36D98866
            C3B88EED1EACF62C05AC6E6C7591F7DEA64F52A18570A4296318DC86EBC65362
            0384D8DA26351CE560C66CB9673147F07C4158B0D140B2085F2F110E663670A4
            C6433ADED7B806D6AC1D4CBA1A4640098D7C95AA38D6D00EAED70975473B7378
            7C27298901C0DD79B5F6062A65CA30B39B241102C10671146EA5DB9EE2E5B41E
            4A2E6E6C3D7B1E440074ED8EDE6B1C162B0D4EA0754733765E621C777788200F
            762DBA2FCCAC5B7763E33112998E0658D8AAAC9660F9D9465E268A329200B8D7
            A7BF1ACC7BCC86AB1B331585C353E8DD5C11A59C238893A2C1B1374B132CE886
            096340C0C8F22B280B7D6D9BC46D7B5AFADAFA6B5853A0F2EB856F1BB5B0B4E9
            3B71E1C4830019BE43AB9CAEDD5B25C0AA7FA4AD892E2208DA15CEF131254752
            AC35CBE6410BA795FD86BE22997B6CB75B131B4F0D59DD2180E113C0E9D9FA68
            B99C5B0314DE1C2E23ED8A41FC40551149E7EEAEB9DB4708D13D2B7E72B65B17
            626370F34532E0E46E192429D2E4A91D75B75BF4ED52D3A751AEDEDD5AFC7633
            0788C39A02B0683127749C8CF2D40F25F587D9B8B8A28A1F814C234992792CA5
            D9CA00028CAA328CA0E963A9BDFB564039A00DD3133C54352A61EB39F50D7697
            96160B168683326F266E7D65AEDAD03BCD23CAB3C2924AEE4CB1B8112C8C4B76
            2491C83A5B97B562F1BE6F39EA3253611E30CC9A5D1B88681EEBE4B88CAD0D03
            324DC936E0B7876E66976ABA484AF059600189409F171F1140360447637EA39A
            FD0D49D212E7C1D2CA87B13194B0BBEC8977BC48826F3066F7B80A56EEE0123C
            3E49B4E2118BC482354C2C3AC6AC3CDE417034BA96EE2BDA4C0D67BDD67A87AF
            1586D2C59C462A68998F71B1AB9D624761891A869D541DB3B4446B88739DE7C7
            C51CD9982AA4587726D18E625DAC96CC4016553E60E351ED6827570F90567038
            5AB59CC6080DA0E2333EF3C199CB29ED891D51CECD78970F3C4FF06C4BE63143
            9DB3C918D44976D158D8DD1ACAF6D003C87CE8CC0736CEE1C565EDCD739F4ABF
            F7B4844BA2CD27AB49C88B8D091055E372F7D57159619AC93DB94F4597D6BE4D
            E6BF68EE04F46B87D8E6B53B57633F09FDE53BB3BC75F9F61D26E35616912889
            444A22F89A50AACCC42AA82CC4F4000B927ECA2F4024C05C6778F79CE2712B29
            40F046D78A292F9580F9D20045C9EB6E96B0208BE6D6BEBEF3E741EA577584D8
            C29614D3DEDD7B85C8D3FCA39718CCEB10BC3B322C4077C25F517970CDCD2C76
            BFC643DE64049D0735988EAC2DEEE35F25BAE638730A27626BE1375B88176D9A
            F19386AD770240CCEA0136049C983DAE225E1CD1678266FF00ABCCC485901B17
            8B2E91B5AD25F52D985AD6ACF7F76CE1639F5FABAADECA6AB8D4A1521CC134C0
            024B7313A9CF73808839DEC1B1375CCC9182ADC289DDB0F24E0AB989CA9CA638
            D8160583905993A8E42095A9A9D26C0E594AD563368560F7C100BC0DE0DB8913
            A9C8FEE93D72ADD06EDC2140973E22C00F8E6CC9CBD088C5A253F9283EEA9F74
            6AB59D2B8196DBAB3F9E7DEB6B144AA32AA851D80000FBABD51924992BEE8BC4
            A2251160C662D225CF23055B8173E67A0AC5CE6B44B8C05E804980B01DB305D8
            7152EA9C56D7A2581CC7D56653F68A17B4189BE7D9C5374E691ED7818C604AA4
            C97C82FE2B120DBED0DEE35E0A8C31045F2BE7D49BA7864A7566BC4A22511288
            A063362E1E5219E142C3A38195C7AD5D6CCA7D86B12D04CA95B5AA35BBA098E1
            A1EB192ABED9DC362930C2E264412EB2472B174722D6258DD95AEABCDA9E503A
            544FA260EE9CF8DFF55B3C2ED3635EC756A60EE9B16FBA7E43DD23940CCDD57B
            1CAB149C7C64569208E2821C2EA433286CB2B35B298BBDC5F5394EA0068DE037
            DF70C865EBD76AB985A956AB4E128BACF71717F281223306D7137E3BA65448C2
            E46DA18E2D2BCC58410862BC5B6859EDAAC43A65E8479E600C42C3A4A9AE43D6
            9EAF2AF54697BC603062030CB9D9C1FF00CBBE7280D95AFC6405B0EB8B648E12
            D30484429C30CA15CBB00A7A2B08ECFD6E185CDC5B1709A7BE445ED1656B0E43
            31870CD7B9EDDD3BDBC77A0F6F5DC657E21748DC2DE6F85446394FC7C6066FC7
            5E8241EBEC7D7ED02ADD0ABBE2F985CDED8D9BEC75659F03B2E5CBCB973055AE
            A75A74A22511513D2A6D8C9126154EB2F349F9B53A0FD26FB95877AAB8AA90DD
            D1AAE8BECEE0C54AC6B3B2665FBC7C877C2E77B3B67BCBC4291B48235CEE13A9
            17B003BF53ADB5CA188D6D54E9D32E931202E9768635B43769EF06B9E6013A0D
            5C7E9369CEC0AC203C6EA4310EA3382ADCCB619B522C5582DEFA0B58F6A1616B
            ADD6BDA78AA35E8C54162776E2C4E56CC4122C64DE04CC2E89B9BB31B18CB8DC
            5A821748C58812C8BCA710EBE1CC0055B802F93F1455CA20D401CFFEBCD72DB4
            DD4F04E761F0E73CF8B467B81D9C1CC8EC24DD741AB4B409444A22A1E377CA66
            56E1A2C5C8E093CC55C87C8E19ECA40F8B24656EA47635A9AFB569B1DB833F78
            7510607CEEAD330A489EAF96AAB38FDE2C4AC91CD14C649143655CCDC39000A3
            867A47763ECD48B1B806AA52DA350D40E7D80001EF97467FD14AEC3B77486FAE
            52BADE0711C48E392D6CE8AF6EB6CC01B5FBF5AE85505AADF4858E12565B5E3B
            4A6E09E54376E9D4E5CD61DC8B554C752E970EF6F2F0BFD14B45DBB5015CD5A5
            61D4B6BC9E09AE410172139AE56CAA2C74D0572DD354712EDE32447C432E0B67
            B8D0223B96DF75237931708BE8B9A56BAC82CAB7F0E636F1C8BA0FA44D5FD961
            D52B34932180C5C189B5BD68A0C4C3586D9F25D3EBA55AE541F49BB6A6429878
            8948D90C92C8090C6CD6112E5E6D40726DD94DEC2F7A38EC4746C0D199F533F2
            F9A9E853DE32720A0ECFDE69D090B2E7B295547E620E7422470D69344E20B66F
            A3F66AE9ED67B1BEF8366C7197719E6ACBB0A09B1D7B95CB76F6E1C4F12F1E4C
            8135B9D4B039B42065B3061D4DC58DEB7787C432B82E65C031DC0FD552A94CB2
            015BAA9D609445ACDE1D891E2E2314835EA8E3C48DF487F31DC56152987882AD
            60F19530B5454A67B342381F5CF35CADE04E3C70E2D663240898710C6102C823
            5394895DC65565E63CB739B43720553DD69706BB302238AE9856AD470EFAB437
            431EEDEDF332D93105A01B836912358BA8BB6B152625A391CC51A5F83878918B
            AA8197E2D380AFAF3275B1371A74031A81D520980321AF84AB3817D0C207318D
            739D1BCE711BB3CCEF96DB3E3AA98F856D992E1A7332B4B705E00A73088839B3
            1BDAE74014F7D7E6D7A59D0383A6FC392C1B893B5E9BE90A70DD1C4FDED34F9C
            4D8F35D8A19432AB29BAB00CA477045C1F756C171441060AFBA2F1288B896FBE
            378B8EC41BDC237097D413423F5F3FBEB578876F542BE87B1287458267177BC7
            B72EE85A48A428CAEAC559755653620F98235151024190B6352932AB4B1E2415
            61D98ADB4668E231AAC86E7133A0CA5E2194DD80E50E5B42C06A4A76B8AB2C77
            4B6D753C973F89A2366B4D4DE25A3E061BC3CCDFA80B8EB3AC13D8F0D02C68A8
            8A155405503A000580157C0810171AE71738B9C6495ECF32A2B3BB0555059989
            B0000B924F60057AB1548C0FA4C859F2CB04B1A937471CCA12E40328215A36D2
            C56C6C6E0136354D98EA2E244C5E3AFD67D572A5345E04ABD55C512E3FBED855
            C2CB3E5CE40569A336462B7566CA1A536B5C3582806C075AE771D400C480DC9D
            04E7A98397D56C28BC9A7274F2E6B4588C5F1123963D032A9CCC5D864905CAB3
            38C80F2A82874BB0D475149B4F71C58ED2780B8D605FB45F91C94C5D2011EBE8
            BACC3BCF047080AB2308D6316000D0D9458B9506DA6B7EE2BA7A98BA4C0F24FC
            313CA725AD6D273A39AD6EDBDEE8268F17860402D876CACC5086CF1C7640A1AE
            C489869DF2B0AC2B5768DF65E436787C8AF58C367735CD36C61A46E0701435B1
            28D26581D6D1A960C0E63CCA0FCD1A9AE7683D8DDEE93F098F781BE9DBCD6C1E
            098DDE3C15A37571F1E1A792662802C530B70DA224FC5C8235690D8921741FDA
            ADECBA9BAF71765BB3F10391E0A2C4B640038F08576C36F940FC2B2B738626C5
            18205665BB59AFAE4622C0E82B74DC4B0EE0BFBF716E026EA99A644F254DF485
            B423C449863093CCA524CCAC18A66F085033B5B98902CA6DA9E80EB76855A751
            8CA8D322E41F971B7CEFC3522C506B9A4B4F255A3B455A6584AB5F85C565B87B
            12CAAAA5671756F172AF9D6A7A12299A80EB1C349376E9CCAB5BE0BB7797ACD7
            58DC6D9E23C32BDC96979DAF7D074555049CA2DDAFD49F60E970349B4E836351
            27AC8EC5AEACE2E799EA5277977922C122B4A1DCB5F2246B999B2DAE45C81A5C
            54D56B32909798583585D9287BA5BDCB8D6910C7C27501D54B66CD19B735EC05
            C122E066003A1BF35634310DAC096E87D7AE457AFA6599AB2D4EB0547F499B03
            8917C2A31F1910E7B7568C1BDFDA875F666F5556C4D391BC330B7FB0B1C2955F
            67A9F03FB8FEB91ECE0AB9B0A430E1D1B05879A7C4CA331768898F0E578919C8
            6D94B5F8801BF43AFD131B3DC60DC0493DCAD6263138A70C63DAC6B2D6B17099
            1C4C644E83413256BDF75F16499311961CC733C98896317F363CC4FBED517415
            0997596CFF006C60A933A3C382E8160D07EA3BEFC6EBA3FA3FC416C208D882D0
            49261DADF88DA0FD52B5768FC3074B7AEC5C9ED3835FA568B3C077CC5FF9A559
            2A55AF4A22E2126130AE4C8F8EE1BB97774E0492652647F9D1E834CA6C75D7D7
            5AD7B29933BD13CA7C177585C56398CDC187DE0D800EF0658011674CF58B2F95
            D9F850415DA4011A83F06C40FBED5886305C3FB8A9AA62B14F696BF0B23FF91A
            7E8AF9E8F963E2624C6EB2911E154C805B37C5125883A824DEF7D7CEAF5389B7
            00B91C739FB803840DF7DB85C5BB32575A996B56AF79F659C4E166815CA338E5
            2A6DA82180275D09163A1D09D0F4AC2A337D85A355934C195C5312F966E13284
            7168DD18290B636551C8C74B3A80A3A59FE70BF30FA2F6021F369FD75038199E
            4325B10F04885D0F07BF51AE1635519E7545461CD94B2E45396C0B3DC3ABD80F
            092491636DD9DA0C14B7B5898CB58CCDB39D553141C5D1A2AAED5DA4F89C4C92
            15BDC0400C619D23CD380B74365D47CE26F727A695A6C757155FBE0DB4D381CB
            339957283374445F5D78AD4B61952010AB364446454925B484A1D0058873781B
            DF7ED506F9755DF22E483205AFCCF5859C00DDDFAF923330899E058A59428545
            3133E628CC972EA40D40F50E5AF49DEA8055240D4EF72E064D979937DD027A94
            A777C8AD26747221E20F8B445E71717F10199985C126A10D6EF10D822F199397
            C967262FC941DA9B692110F43C49F8672E2243619DB339F51B7F9AA7A3867552
            EE4D9F8470B0583EA06C75F15384C338C8DA890DF8737118FC4939AD2F2DBA0B
            F5E5A8374EEFBC34D5B1F7B95D6737B78F2E6B1B34C258631106C370F99E58B3
            B06170AA046476CBADBBD64053DC73A61F39031DB7F35E7BD2045A3828CAA388
            2CE83247955B33C4A0900824006D98C84EA75CBA0D49A94B9C590E937CBE2B49
            903E5A0D6EB0004DBC94D4C38E24B3286766E1C6F9C2CA9956C793259BA3F523
            5B5425E77030C089222C7B66DA2922E5DFAAB36EAEFA18A0863917346AB62E2C
            02AAC4ACA8854652742006CA49651726F7DF61F1CD1BB4DE6F79D200CBAE792A
            3528132E1CBF55A9DFBDBCB889B8911195144433000E7BBE6233A155B369A917
            3130F2355B1D59B5DED0DB80275D60F10728D2D2A4A2C2C692735B1F46BB28CB
            2C78A5CCB144AC8841B710B0D1081A9501B3589B2B395B5D749F6750A8D739EE
            FEA75F29D6019CD61887B480D1EBD772EA35B755178CA08208B83A11EAA22E2D
            B3B073C9850B0CC511659422F1422B0B446CC19D7A1B9CC037CA1F217A2D638D
            3B18B95D7D6C4D2A78D73AAD30E25AC99130633163A470CB3581B7527EA78173
            ADF8D16BA917BE6D7507DD517B3BF3B7CD6C5BB730A06EB43ADA6EABBFA2D84C
            431B035AF1C8B7CA6E2E52DA79F8455AC3B7725BCFE8B9CDB75DB89E8ABB4407
            34F738ABD5595A24A22E1F81DDF694C85A68614577525DAEFCAC41CB1AF31D47
            7B56B1B40B89BC2EF6AED8650A6D6B58E73B7464205C039F902B611E1F0D0893
            87036264550CAD88655899B3C6B956356BB0CACED6637E43528A6C6CC093CD6B
            EA6371558B77EA06349821A0C81C498ECB18E4AC5E8F71CED3E2DA7088CF142E
            A10055091B4D1F9902D61A5F4197CEA7A5BF24BC47A2B51B47D95AD6D3C3BCBA
            0B8927986C41816B1EDEC574C06D186752D04D1CAA0D898DD5C5FCAEA4D4C083
            92D5B9AE69870852ABD58AE55E9476085C4C78A5CC38A8C8E52FA9543746F20C
            A23D4730109B75B8D56D1696C3B431F39B1EB89B65C55AC399B2A998F3095164
            28EF9A35953914123AE6BE67D5010174BC96EF5A7982D711205E0DFBB219C5EF
            6956E2644F6A9312DB286650A55323152AB2052A49110399CB1620863DC5BAD4
            64CC903533AC67F7B2111A76AF473F5D8B51BA3211263E221C88F105C05B228E
            2165CC6FCEA2C3A0E82ADE39A0B293C45DB1C7283D454744DDC3815B5C0CCAB7
            8D9914A968F31C4B8E8574E9A92CE6DF6D55A8D73BDE00F1F847AD148D205BEA
            B3C846645054B0C8C5951DDEC1D75B9BDBBF6F3AC04C13A5F500647A964782D2
            6F9C724DF04082591965CEC044D75506D9FC3D34AB9802CA7D213001119E6786
            6A1AE0BB76273E0B7D8DC4666CA599F2B660AF131B8E1B6A40507A9B5EA95364
            09022750798E6A671BC7D17934C89725E3072122312BC44E5D4D85CDFB0E946B
            5CEC81CF380E4240FEB0B16005DA4201233E41C3973DB85A86B496523C3AFA85
            6556C003C26E233EABAF1B9FEAB41B9B3E68A7C43B005A796405F3216E4E9C45
            D06BAE5B7CCABD8F6EED46D268C9A05A0C5F81F1E6A0A065A5C78FABADC361C8
            64692465023E13462C8583B65472EA78721CA0F29F5F95550F05A4346B339C40
            9223317D54B17927D7828CF85E229419B98E431A02AC433C7785C1B850D70999
            40D5065D09066A65DBE00127439DE0C11CF583C6FC562E883397AF5E0BBB6EFE
            CB186C3C302DB916C48EEC7566FB5893F6D74CC606343468B5AE32656C2B25E2
            86BB5213C5092C6E6204C8AACA4A585F980375FB6BC90B2DC75AD9AE2182E0F0
            2218A3205CD270F82AA642488B3926470A05C2802C4F5E9A13AE05BD18DFE711
            DEBBA7B710DC6D41848901BBDBD96477408BE579985B17D9B859C208318B9946
            548F13108AE0963944B1800DD9DB4B9D4D645AC7D83BB088EF10AB36AE2F085C
            FA94889CDCD7177696B8BB41998571F4668F9B1ED2AE47E222BADAC15941B81A
            9F31ADCD58A05C4B8BB395A6DACDA4CA7429D176F3434907ADC7AB59579AB0B4
            A9445C6B6FEC43F0EC746A8EEF713C489D5C48E998F43A2997A69A236B615AF7
            D21BEEB5F31CF8AED30DB49CDC250F7835A65AE744EEC0F7634B81ACF52F83BB
            F1C71018B963C34B7E60499A52BA748E3364E61DEFA1D4E86EE898D6FBD63F35
            E8DA389AD889C383519A40DC1BDCDC64911A1224E8B5DB7A48BE05345823282A
            4C929932E69212634902AA0B2AE64C3B6A6E563248B5EA4616EE16B3AD51C653
            AFED4CAF8903F0D81807317399CEE2473B5A0FA34C77C1B1587991D8A39E0E21
            34B59B407F458A9F3B5FCEB0A75375F055AC6E006230A6A30FBCDBDF90931D9F
            45FA1EAFAE3969B7BF657C2709346BE3B668EC6C73807407B661753EA635157A
            42AD32DF53A2CD8EDD74AE03B0A57439146630C9C132F84C90B1CC09671C965E
            C35B027B0BE8712D6B849B6F098CE1D96433BF1B4DBAAED324586969E216F5D1
            82C92A28440A5403C8A723731666BBB1E5196C16F6EA2FA520448638C9F9E7C8
            5B5BDCF529AF723D7D57A365C449B059331F8D2232ECF7B9E691AE187AB4163D
            2D5E74EF8BDA32BC47501FD79A6E37D79A9C212581025E4394E668D40190E8B9
            3C3E25D40E83ECA87784418BF59D759ED59C5FFA2C31320F0B228CCD981C4C97
            62332DCF9EA2F7F556643B504DBF00EB5E08F44AF636422E1D139CDFFEA24E6B
            122E7517B80284386609B7E10823D15E2BAF30568D6CC351889066F0B13F6DC8
            A10EB1209B7E11CD2DA78AC9875F18886A19431498B96F0B1F1F5E5245CF7AC5
            C72DFE1AB6388D39AF472F158E4C1A9E6C8E5AE533491C72B017B36A016EDD2F
            6AC85422D22338048F20BCDD19F915162C184CB142CB660E4852B1E5E8A72C45
            08CC7379AF43529A85D2FA8328E7F374E5F35886C59BE5DCB1E2CB0530A0F8CD
            165C91B8CC86E5AE841490D981255BBF6BD64CDD277DD9692467A5EC4768F9AF
            1D31033EA5B2F447B34E27192E258658E33658C66CAA13963F1017BB711BD463
            1E7A6EB0B446F09BEE899B5DC7C878AA751F63CFC02EDB5B3559547D27ED4687
            04C91B159266112B0EAABD5DBF54103BDD85435AA6E356CB65608E2AB86E82E7
            ABD15C1F66968B1396091872B46FEB0C0AB269D41B81EDF5806A9871DDEB5D4B
            B0F48D600FC2D3249D22E7B1756D8E8422C030F8E82E143F130A26C3C8F9554C
            8EA56EA5AD7394DBAEB561A7EE804765BB5692BB4C9AEF7D379926CF21C39366
            0470104E802D49DDB691E468DE3C6DD8B3241324325C925B32C88D61EA1E5A54
            468EF389F8BB63CFC56C99B4C51A0C60069002C5CCDE06D62082DBFF00A62EBA
            07A3FC3B2E19A492D9E595DCDB516522350A4EA572C62C4DEE2C7BD5BA60C127
            327F4FA2E6F1EEA7BED652F85AD004E77F78CF6B8DB4566A91514A22A27A4DD9
            AE15319092AC8A6294AE8786F717F602C7F5EFDAAB624380DF6F5762DF6C3AB4
            9EFF0066AC25A48709FC43CC7CE00D551F0FB0C2A24B88992089C07402D24B22
            9B1063443D0DFC4C458F51553A18BBCC0F9CAE8CED43509A785A65EE16B8DD0D
            EB27C3BE6C936D98E3568F0B02A2B028EF3059669108B32B5C654561705545BD
            75E8AC1BF00F9E6B076CD7E22F8CA85C746B6CD1D5A93CCF6CAD06C4C170A404
            1362E840F2B377F33AFDD586F4B82B5ECFD152AB7B169F02BF4956D97CDD288B
            8F6F6EC56C24EF233054779658585885CE56EB66E58C8665E66BA855197C442E
            836861DCD7EF44877F58B770173727257A8540446A16B03598B05C85431CFD40
            0D625D9E5D402D7B0086FADB4E9ABCC41333A7D001CB9F5AB3AFAFAF928D2ED3
            5D434AA1CF94923E800E67099553F242936EDD6D3B30B51D1BAC247501F2999E
            B9039AC0D568CCDFAD47976AC1A006EDA317481517303D964058F41D587B7B55
            86ECFC4EADB702E9EF063BBB1606BD3E3DCBC977881B28388B0D73DA00D7B117
            502C0684EA6FECACDBB22AE6777AA5DEBD66B138A6F3EE49B78C3102D3002C6F
            99735FD43C23DBAF5E828DD8F546ADEF8F09F0438B69E2BD9F79036969D57437
            06366B837D03728B103537F651BB1EAB6FEE93DA07709F0EB438B69E3DC92EDD
            8E422FC5006A0C890B6B623C2A351A9EFF006562365D7A62C01EA24779F25EFB
            4B1D9CFC82CB1ED484901244523A928F0A9BFAD0FF002FB6A1760B10D12E613D
            A1CB315A99C8FD14A13870D1C6E254B58AC4C25D4EBA9702DD7A192AB961610E
            78DD3CC6EF87FE2A40E0E100C8E57F5F35F3897EB1B590B5EF18CD7622D660BE
            28F917468C90B717E95ED369305B7E7D7A7037391009D178E31636F5EB25D5B7
            1F61B6160712002491CC8C01BD86555009E97E5B9039433B5AFD4F4F85A068D3
            0D264FAF575ADAAFDF748562AB2A35CFFD2E9E4C28FC773FE51FDEAA62FE10BA
            6FB303FBEA9FBBF50B9DEEA3AE0434E0472CC5B211203658AD7CCBA825D9B4B8
            BE50A6FE215132A868DE19FD15FC46CD756A828D4243227785E5DA4E70009378
            9360722ACD3E59A3565C64F83325C2C53CF23C2F9429256506E179D757075B8E
            A0DB2709121C5BD66DF35568B8537BA93A836A868B96B035C278B4817B643AE5
            663C57C4C50C982C38C6390E93A1E82F7F8514425588B1604DAE57A76ACBDEDF
            00B44F1FAAC1CDA5ECCF753AEFE8840DD235FC20DBB601817BAEA583C32C51A4
            482C88AA8A3C9540007B855B022CB99738B8971CCACD5EAC5288BE258C32B2B0
            0CAC0AB03A820E841F316A2F4120C85C677DB7797072AA24A583E66443A98E30
            7452C4EA0B33DB4F9A7BD6B7114C30E7FA05DD6C5C6BF14C74B0363323EF38EB
            119C0BF644055D02D55D6F000166C1A5E48D4777403ED602B267C43AD4389314
            1E7834F815FA16B70BE5C9445A2DF0D867170AAADB323F1141E879596D7B1B1E
            6B8B822EA3DA2B62E81AD4F75A60A9293C31D2571FDBFBA7885666919B5398F1
            C1500E83475BC6C6C0786DD056BE8D6761406D4A311AB6FF00AFCCA9DEC154CB
            5FD86CB4B2EC4C42FF0082C4762B9581F66524FDD5699B530AFF00BF1D723F45
            19C3551A286F03AF891D7F29597F78AB4DC45277C2F07B4288B1C3307E4B0F15
            7E90F78A96162BDCC3CE9088641E63DF5EC145EC6D9BC3CDECD7F7560E735BF1
            185E804E4A543B3A66F0C321FD0603DE40155DF8DC3B3378F9CF82CC51A87269
            5321DDC9999430443D83B02DFA2133126AB1DA945D2DA60BFA879F9294619E2E
            E2076ABF6E8EE54E0C5C46711A4893132285B9460D955181905C8B12C40B1D2F
            D0C5470B52A57159CC0C0349927E9DDD9AAC9F51AD66E033EBE6BA9D6E1544A2
            2E7FE9717E2F0A7F1DC7BD41FE9355317F085D37D983FDFBC7F97EA3CD735AA0
            BB244B2F5175BDD96ED63EB01587358B5B5EF5935D19E4AB57A05E2699DD70C8
            C0F95C1B7185DA375377D20CF3E65924940CACA2C8B0803871463E6A8509FAA3
            CAB68C6004BB8F8705F3DC5629D51ADA5101BA6A5DF79C4EA67E42DC558AA454
            928894455ADFEDB32E170C1E1D1D9D63CD60720219AF63A7CDB6BF4AA1AF50B1
            9216D363E0E9E2B13B95320098E3CBBE7A815C8B1D8D9267324CE5DCDAEC6DDB
            A0000000F5015AC738B8C95DF61F0F4B0ECE8E9080A3D78A50415BCDC8C1F171
            D865B5C2B715BD5906607F5827BEA6C3B77AA05ABDB55BA2C13F89F77E79F74A
            EDD5B45F3C5071DB516360855D8DB372DB404902F723C8FBAAA62B1D87C2C74C
            E89CAC4E59E40F159B29B9FF000851FF000EAFD54BFE9FFCEA9FEDDC07E67F2B
            BC967ECF538782F3F0EAFD54BFE9FF00CE9FB7701F99FCAEF24F67A9C3C1409D
            B0AE496C15DBE9058437EB07BFDF51BF6C6CC7FC6E07ADAE3FF1590A359B978A
            84F81C21D461B100FAA5FE466B7DD559D8DD8CECC8FE170F00A41ED23D05825D
            97873F3315EFC39FE226A3F68D8BA3BFFD165BD89F50B01D8386FA18AF7613FB
            579ED1B1FF0019FF00B9E49388E1E0BE9362E18744C57FB5FE54F68D8DABCFFD
            CF249C470F052530186F9D0E29BFF9117F8245AC8627628D7B9FE4BC9C4FA852
            22C36117FF0067230F2919641EE794D4ECDA5B219916FF0003BFF15816620E73
            F3FD56C70DB4E28C5A3C3320F2458947DCF5646DDD9F9749FCAEF251FB3D4E1E
            0B37E1E5FAA97FD3FF009D3F6EE03F33F95DE49ECF538782F24DE145058C7280
            0124D93403A9D1EB366DAC0BDC1ADA9736C9DE486854178F05B8ADA285557D25
            60F89817602E6265947B01CAC7F559BDD50625B34CADBEC2ADD1E35BC1D23E79
            77C2E3F5AC5F414A2F019C95A773B7A31114B878339784BAC79080728636E536
            CDA5EF6BDAC2D5668567021BA2D0ED6D95877D2A95C0870133C4F5713CA2EBB0
            D6C570C9444A228F8FC124D1BC52A864616607F78B6A0836B11A822BC2011054
            94AABE93C3D8608C8AE758CF467271408A65E093A97BF11479580B39B77D2A93
            B0877AC6CBAAA5F698745FDE33DFE591EBD4764F62D26FEE1963C598D0591238
            9147900B5162400F81C16C360BDCFC297B8C92E24F5D96F3D1260EF2622623C2
            AB129FCA39987F953DF52E0DB9B96BBED3D6B53A439B8F80FAAE99579724ABDB
            67E5CFE6D3F8A4AE4BED56547FD5FF00157707F7BB3EAA2571EAEA511288BDA2
            2AEED02D8B844B82C43232920A839431D2E8FF00458763D35F2208D9D0DCC2D5
            DCC4B241F52388E3E7652D22C63C1AAD91C248B1BC8823C8F7AA5BED5C582E0C
            B88053E505DB93AF8EDE1E8753A695D08C260880435B7CB9F52DEB70DB39C011
            17CBDE75FBD58F74E1C4C96C44F889042BCCA1988CF6F9CD7E883EFF00678B53
            B49D86A7FDCD160DED4C65C873F0EBCB578FF6663B728B72CCC9F9093F356EC3
            6216445910DD580653E60F43AD691EC731C5AECC2A2B256089444A228FB47E4A
            5FC87FE1356707FE229FEF0F10B07FC255D2BEA8B50A3ED0C289629626E8E8C8
            7D8C08FE75E11220ACE9D434DE1EDCC19F92FCFA548D1859868C3C88D08F7D69
            888B15F546B83C07372371D4AF7FFA45F1782C14D0141288F2386240650CD94D
            C03A8D7DA0FA855C340D4A6D23385CAB36B37078CACCA809697136D0F6919EB7
            D158373F72570ADC6959659AD65B03963BDF365B9E6241B66B0D3DA6A6A34032
            E6E56AF69ED9A98CF71A3759C353D7E5E300AB7D585A64A225112889445C87D2
            7C56C713F4A28D87BDD7FA6B5D8B1EFF0062EE7ECDBA70847071F00AA536F8E2
            F089C0C2B8895CF11982AB3331E5CA0B5C0002A7400DC9D75AF68BCB5B0147B5
            306CAB88DFA97B003BFEABB37A39DA93627010CB8839A5BBAB1B004E57600903
            4BDAD5769BB79B2B95C750E82BBA9C465DE015936CFCB9FCDA7F1495CAFDAACA
            8FFABFE2B2C1FDEECFAA895C7ABA9444A22F45178B956C0C44EB890B862A2490
            B2D9EF91800EDCE06BA006C46B73E44D7678DA741D86DEAE0C340CB3190B7D7C
            E174188A548E0E9BEA0366B6E33C871D15A707B0B139768998C5C4C4A2AAE527
            2E60B22EBCBCA2CC83B9D3DFA5AB8DC36F501481DDA666F13983C791E0B54FAD
            4C1A7D1830DE317BCE8B4BB7E2C643878219DA2E08B46A232D99B2AF28909001
            002F6B6A05EB6381760EB621D52903BD9DE2049BC7CD5FC0370D53112D067313
            102FFADBCE15CB763FFE3C2FE6A3FE115A0C7FF8AA9FBC7C56AABFFD57759F15
            B3AA8A34A2251147DA3F252FE43FF09AB383FF00114FF78788583FE12AE95F54
            5A85CDFD306F3E2B07F0518493879B88D2305563CB9028E70401CCDF77DB0D5A
            85B002DA6CEC236B87B9E2408EF9F25CEE39DA41C493C6E4C8FA5B998963A0E9
            A9E95AD799712BBCC2B772831BC001DD65DCB7322CB81C203DE256FD619BF9D6
            D297C03A97CF3693B7B17548FC47C56EAA45492889444A22511288AADBEDBA87
            1BC264754912EBCC0D8A9B1B69ADC11A7B4D415A8F490B6FB2B6A7B11702D90E
            F11EAFFA2ADC7E8A8B3219712B6537E58CDFA5B425C5BDC45C0D0F4A89B858CC
            AD8623ED18781B94A08B83BD3DDBB91EBEABC157FD8BB3170D047026A105AE7A
            924DCB1F6924FDB5698D0D68685CFE2710FC4557557E64FA1D82CB59B67E5CFE
            6D3F8A4AE53ED56547FD5FF15360FEF767D544AE3D5D4A225117A288A89B1373
            D5D5A4C58214DCAA5F2D85EF9DCF6F50EC353E43A2C5ED773229E1F3D4E7D83C
            FE5CF615768B8D2653A7601A26C2E639E8B5583C4E1E15DA91231C92A0483958
            E7B09458955B0177162D6B8B1F33576AD2C456761EA3C5DA65D7022EDE7CB21A
            A9DD87AD53A27399D7603EF6A3A967877663970B1CF84E6955409D3B97B02CAA
            3E6907A0E8C2DE6098CED2A94B12EA588B349F74F01A1E638EA0FC929E35F87C
            43856169E02DD5198FEB9E775DD81FF4985FCD27F08AE7F1C671353F78F8AD5D
            521D51C46527C56CEAA2C128894451F68FC94BF90FFC26ACE0FF00C453FDE1E2
            160FF84ABA57D516A15737D375C6392350E2374624315CD7561664B5C75210DF
            F16A2AB4BA41C16C766ED03837B8C6F0220898EAD0F3F995521E8C66CC01C447
            909E6203060BDF283717F69AADEC66735BE3F69D9BA6299074BC89E760BA7451
            8501545800001E4068055E5C8924DCAFAA2F12889444A225112889444A225115
            6378714893F3BA25E35B6660B7B3497B5CEBD47BEB96FB4D46A5514BA36931BD
            9027F0F056F0AE0264FABAD7FE1483EBE2FDA27F7AE57D8B13F96EFE13E4AE74
            8CE213F0A41F5F17ED13FBD3D8B13F96EFE13E49D233884FC2907D7C5FB44FEF
            4F62C4FE5BBF84F92748CE213F0A41F5F17ED13FBD3D8B13F96EFE13E49D2338
            85136A49869E331BE21029F1059505FD475E9EAA9A851C5D07EFB6919E6D27E8
            BD6D60D70734891D47C569BFF4EECFFAFF00F5D6AFFB66D3FCB3FC055CFDAD88
            FCCEE6F929BB270183C3B978B1001232B033290476B8EF6D6C7B5CF99AAF897E
            3B10DDDA948DBFC85415B18EAC41A8F063F747800B6FF8520FAF8BF689FDEA97
            B1627F2DDFC27C943D233884FC2907D7C5FB44FEF4F62C4FE5BBF84F92748CE2
            13F0A41F5F17ED13FBD3D8B13F96EFE13E49D233884FC2907D7C5FB44FEF4F62
            C4FE5BBF84F92748CE2160DA1B4E1E14BF1F1781FE7A7D13EBA9F0983C40AEC2
            69BBE21F74F11C962F7B774DD5FABE98B549444A225112889444A22511288944
            4A22511288A8BBFBF2F1FE6FFA9AAF60BEF767D5415B455AABF2A04A4A252512
            92894944A4A25251292894944A4A2525163C4F81FF0024FEEAC5FF0009EA5937
            35D8EB48AE25112889444A225112889444A225112889444A22A26FEFCBC7F9BF
            EA6ABD82FBDD9F55056D156EAFA8128894458E28818C39C4C5AC68CA33A86CEF
            90D9C65D147C60F3B117D45CF135BED262195053DC32DA8EDE2059CC04D84EB1
            1E775B26E11844CE62DD6B3BC0DF35E090FD18E4676B5C0272AC64D85F5AB23E
            D6D1D68BC733007CC9587B03BF1052A2D932B0054C241E843B7FE3A88FDB3C33
            4C1A4EEEF3597ECF77E20A30C2BE6B5E3B6967CD26424923286E1E5BF4EFDED5
            27F6BA844F44EEA96CFCA6563EC0EFC41647D91392CAA62CC029B12D6B37105F
            365EA0A8D329F6D41FDB2A5BE0F467720F0DE9B7388BACFF006798CEEA3B4794
            B2924E5665B9B5CD988D6C00E9EAAE976562DF8BC1D3AEF8970D3AC8E6A9D760
            6542D1A256C14294458F13E07FC93FBAB07FC27A964DCD763AD2AB89444A2251
            12889444A225112889444A22511288A89BFBF2F1FE6FFA9AAF60BEF767D5415B
            455BABEA04A22F2DAA825802C8095176B16506C2C6FA1F2AD7ED5C4D4C360EA5
            6A71BC05A72CC29A8303EA069C94CC395104569B119B878752385D1430CBFE0F
            996B1EF6AF95D673EA577B9CD6DDCE39EA73FBDD5D4B76D003401C9499B6818D
            8B9691DAE5111E32999394920E45CA41B731B8ED6B915260B66D5C73C51A2D1C
            490ECB4BDCDB90BAF2A566D31BCE2A147B42617F8CCB7666CAAAA40CCECD6BB0
            249E6B5F4BDBA0AEDA9FD91C16E0154B9CE81798D22C3FAAD69C7D49F7725970
            9B44E58E095822582890788DAC163208B2B1B0D75B9D00048AD16DAFB3A70738
            9A12E6CDC1FBB3ADB31F28D642B387C5F49EE3AC548826612485E49C5C201F16
            9D0CB304B8E1E97057DE6FEAE71CD69600D0DD753F85B3AF5AB80DEEB5B8A8EC
            F7BC87334C5B38503475B11651D98D775F65B1B56A0387746EB1A22399BCAD66
            369B47BFA92BE6BB05AF4A22C789F03FE49FDD583FE13D4B26E6BB1D6955C4A2
            25112889444A225112889444A22511288944545DFD1F1F17AE3FDCC7FB8ABD82
            FBDD9F55056D156AAFA812888879A3D5873A6AA3330E75E82C6FEE35A7DBFF00
            FA755EAD6DA8EA5630BFF55BEB452E161C188F1B1198AE1411C2E8038B1F91F3
            2D6F3B57CC5C0F48E1BAD8977DEE5FBDD4B7232CF82F9DAAF7947348D9505B88
            9908CCCD7B722DEF917DD5D97D8DA6053AAE802E058CE8799E2B5FB40DDA146A
            ED16B97C4C6C2FE563D2FD083D075E9D2AA6D01384AA3FC8EF02A4A5FF0051BD
            616DE69C995F33902D01BFC1E6EA2590A8FB5ADEDBD7C81AC018207E2FBEDE02
            7B96FE6FFA2D7E3E526400926C65EB1BA75E09F9DD7AF4AEC3EC8B40AB523F08
            D41D4F05431E7DD1D6B1D774B5694458E717561EA3FBAB0A9F09EA593730BB1D
            6955C4A225112889444A225112889444A2251128894454DF483002D8672F9001
            2A5F86D25CB70C8165208D11F5AAF8ADA353034FA46303A4C5CC71D5435AA51A
            6DDEACEDD1C626FD8AA4517FEE3FDACBFF003AD78FB575B5A03FDC1E4AA7B66C
            FF00CFFE529917EBFF00DBCC3FAAB2FED654FC81FEE0F24F6CD9FF009E3F85CB
            3C0B08CAC679F3021B962B2DC1BE80C64DBDA4D69F1FB771D8B63E8963031DA4
            DE2673DE1E0AC52DA3B31843BA5B8E47C94859A100013E22C046A3E287489B32
            FF0083E75A22CAA4CEE375D78D8FDE567F6DECFF00CDEE3E4BE312F048D9DA7C
            4DEC17E4C74049FA9FC635B2D9FB4B1B80616506B2099B99FF009286AED4D995
            4CBAAF71F258F8787FAEC4FECC7FE1AD87F6976AF067AFF528BDBB657E6F8F92
            F0C5863A71B13FB3FF00EAA8EA7DA1DA751858E0C8208396B6FC4B26ED0D940C
            8ABDC7C94B9319112499F117393FC21F318B2FF85E64D68052A80406375FBDC4
            41FBCACFEDBD9FF9BDC7C961C4340E6E66C45F53F27DC8507FC2FC45ABFB3F1D
            8BC0B8BA8B5971064CDA67F1735155DADB36A88755EE3E4A1E45FF00B8FF006B
            2FFCEBA5FED5D7FC81FEE0F2553DB3677E7FF29F24C8BFF71FED65FF009D3FB5
            75BF207FB83C93DB367FE7FF0029F25970900692151366CD246A47C1E45B82EA
            0EA5EC396F5361FED1D6C4D4147A10275DF062DC21674B1182A8F0DA7565DA08
            37D575AAD92BA9444A225112889444A225112889444A22511288B41BED86CD86
            2DD4C6EB27D9AA31FB11D8FD95476952E930CF1CA7E575AFDAB47A5C23C0CC09
            F95FC150EB885C225112889444A22F0872AEEA84AA789890076D077275EC2DEB
            AF65A0869372B6986D9188AD40E20406004C939C4CC01D5AC2F6BC5AB4A22511
            2889445B6DD3C3E7C5C5E481A43E5A0C807BDC1FD1ADDEC3A5BD58BF80EF3FA4
            ADE6C1A3BD882FFC23BCDBC25745AEA975E9444A225112889444A22511288944
            4A22511288B1E2215756461756055879822C47BA88B95CD0346EF13F8918A37A
            EDD1BD5994A91EA615C2632874159D4FE5D5A2F9EE330E70F5DD4F81B7569DCB
            E2AAAAC9444A22F19800493603524F615E81360BD009301678F63BBC6CCF2B43
            1939F2B66E800E675CC02F87A104F9D8E82338A631E035BBC729B7C81833D7F4
            5DDE0363E27D9453AF54B5B7F744581999317CF2C96B61672EEE580888554254
            DCB02F982AE6399B51A0D140E6616B559706868681EF6B7D2D178B0EF3A0D569
            7F65619C3A5DE2DA209F79D12ECBE100659C67D5A2CF868F283724924B731B9D
            7A0D34D0586961A74AC1EE92B49897D37D5269086E83973E6733CF92CB582812
            88944574DC5C16589E62359480BF909700FDAC5CDFB82B5D96C9C3F438704E6E
            BF97778AED76361BA1C3071CDD7ECD3BAFDAACF5B35B64A225112889444A2251
            12889444A225112889444A22A8EFC6CBE98A51E11966FC91D24FD1B9B9F237BD
            96B4FB5F07D353E91BF137BC7AFAAD26DAC0F4D4FA560F79BDE3F4CFE6AA55C9
            2E3D288BE25942D8B683CFB0F69EDEDAC9AD2EC964D697582CFB230ED24C15EC
            557E32E3E7588CAA476B1209EC6C3CC811E21E194E5B99B7571FD3F45D27D9BC
            1D3AF88358FDC8B733307AAC79831C16E778988848B039991486BD882E2E0DBA
            822E2DDEF54B0801AB3C01F05D8ED2C48C3615F54B77A34E3263EAA9CF893677
            66398C29948160BF29A201A228B0D079773D77229890D02DBC7B72CCEA79F805
            C256762768D5DE7FC2D7199B35A2DAFA279A9D85919866396C6C56DAE9E77EFF
            00FEF6540F686980B578865263B7699263324449E4338EBBF2192CD582AE9445
            2B65ECF6C44AB12DC03ABB0F9A9DCDFB13D07ACDED606B63B370671356FF0008
            CFCBB56C766608E2AB41F845CF976F84AE9D0C415555400AA02A81D0002C00FB
            2BB45DD2FBA225112889444A225112889444A225112889444A225117845F4344
            5CF779B611C366950130753617317A8FE27E3761D7417AE7368EC925DD2501D6
            3EA3CBD0E6369EC73BDD2D016398E1CC72E5A696CB43F091E4DEEAD3FB1D5E1D
            E1697D8AB70EF09F091E4DEEA7B1D6E1DE13D8AB70EF0A1C183570C032A14621
            438B8B1B30196DA0D40D083CB5ED573E938070371A7CB3ECE6BB1C0E02962B06
            3786E3C58B9B6248C89233B673ACAF9E148030E65BF35A375E1E6056D9431D6C
            01D4A8275D074AF37A9D8E7D60CC5F323E84AA753676D36B0D19DF61FF00367A
            EB045E323DA57B0611C965E455C8230EE752BCDD1501D75B1B9034047903EA34
            006E4CCC0E36D4E9C333A733E61B6056A841AC7704CC48327E64751326F1CD65
            8484790662C05AE40362C40627C86857A01ADEF7D0D65D0D4AAC0E03FA65EBB2
            153DB1806527B69506E42E49B9E03B3AB5E4A47C247937BAB1F63ABC3BC2D3FB
            156E1DE166C0A34D208A242CE75F2551F49CFCD5EBAF7B580274A9A86CCAF55D
            110353C14F87D9788ACEDD0206A787AE0BA4EC2D90B868F28399CEB239162C7D
            9F354765EDEB2493D761F0ECA14C319978F35D96170CCC3D314D99789E256CAA
            75612889444A225112889444A225112889444A225112889444A225115536BEE5
            46F76C39E0B7D1B5E33EC1D53F474EA7293556B611952E2C554AD83654B8B155
            3C76C2C4C57CF0311F4A3BC8A7D9946603D6CA2A83F0955BA4F52D7BF0755BA4
            F52D49CB9880E4375215D94DED6B90A47603AF95557D21F7DA3B40FAAC1B5ABD
            1B02472FD1660CDF4DBDF7FDF507B2D1FC214DFB4F13F8FB8792F1E623532103
            D640A7B2D1FC3E3E6BDFDA58AFC5DC3C97DE0706F27C8C724B9B5BA86704FADC
            E834B7523A55C661DE400D6DBE4A134EBD676F10493A9B2B2ECCDC999EC67610
            AFD15B349ECBF813FCF5769E07579F92B54B67EB50F60F3575D9BB3628132448
            14753DCB1E9762756360353E557DAD0D1016C5AD0D10D1652EB2592511288944
            4A225112889444A225112889444A225112889444A2251128894458E6815C59D5
            587930047DF4450CEC2C29D4E160FD927F6AF202F202CB06CC853548625FC945
            1FB857ABD52E889444A225112889444A225112889444A225112889444A225112
            889444A225112889444A225112889444A225112889444A225112889444A22511
            2889445FFFD9}
          Stretch = True
        end
        object RLLabel46: TRLLabel
          Left = 88
          Top = 15
          Width = 409
          Height = 14
          AutoSize = False
          Caption = 'Prefeitura de Porto Alegre - Secretaria da Fazenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel47: TRLLabel
          Left = 88
          Top = 30
          Width = 641
          Height = 14
          AutoSize = False
          Caption = 
            'Rua Siqueira Campos, 1300 - 4'#186' Andar - Bairro Centro Hist'#243'rico -' +
            ' CEP: 90010-907 - Porto Alegre - RS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel48: TRLLabel
          Left = 88
          Top = 45
          Width = 409
          Height = 14
          AutoSize = False
          Caption = 
            'Tel: 156 (op'#231#227'o 4) ou (51) 3289-0140 (chamadas de outras cidades' +
            ')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel30: TRLLabel
          Left = 88
          Top = 61
          Width = 409
          Height = 14
          AutoSize = False
          Caption = 'Email: nfse@smf.prefpoa.com.br'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 351
        Width = 742
        Height = 33
        BeforePrint = RLBand6BeforePrint
        object RLLabel31: TRLLabel
          Left = 6
          Top = 2
          Width = 625
          Height = 14
          AutoSize = False
          Caption = 'C'#243'digo de Tributa'#231#227'o Municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo3: TRLMemo
          Left = 7
          Top = 17
          Width = 729
          Height = 14
          Behavior = [beSiteExpander]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 384
        Width = 742
        Height = 38
        BeforePrint = RLBand8BeforePrint
        object RLLabel32: TRLLabel
          Left = 6
          Top = 3
          Width = 625
          Height = 14
          AutoSize = False
          Caption = 'Subitem Lista de Servi'#231'o LC 116/03 / Descri'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLMemo4: TRLMemo
          Left = 7
          Top = 18
          Width = 729
          Height = 14
          Behavior = [beSiteExpander]
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
end
