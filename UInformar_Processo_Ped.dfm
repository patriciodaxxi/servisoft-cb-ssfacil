object frmInformar_Processo_Ped: TfrmInformar_Processo_Ped
  Left = 229
  Top = 111
  Width = 828
  Height = 490
  Caption = 'Processos Pedido'
  Color = 12910532
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 820
    Height = 459
    ActivePage = TS_Conferido
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Conferido: TRzTabSheet
      Color = 12910532
      Caption = 'Processos (Conferido)'
      object Label1: TLabel
        Left = 115
        Top = 295
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data:'
        Visible = False
      end
      object Label5: TLabel
        Left = 66
        Top = 318
        Width = 75
        Height = 13
        Caption = 'Transportadora:'
        Visible = False
      end
      object Label7: TLabel
        Left = 144
        Top = 248
        Width = 72
        Height = 23
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 48
        Top = 216
        Width = 252
        Height = 23
        Caption = 'Pr'#243'ximo Processo.....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 521
        Top = 210
        Width = 36
        Height = 19
        Brush.Color = clYellow
      end
      object Label9: TLabel
        Left = 560
        Top = 216
        Width = 87
        Height = 13
        Caption = 'Email n'#227'o enviado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 47
        Top = 340
        Width = 94
        Height = 13
        Caption = 'C'#243'd. Rastreamento:'
        Visible = False
      end
      object DateEdit1: TDateEdit
        Left = 144
        Top = 287
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
        Visible = False
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 144
        Top = 310
        Width = 457
        Height = 21
        DropDownCount = 8
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DMCadPedido.dsTransportadora
        TabOrder = 1
        Visible = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 401
        Width = 816
        Height = 35
        Align = alBottom
        Color = 8404992
        TabOrder = 2
        object btnConfirmar: TNxButton
          Left = 166
          Top = 3
          Width = 147
          Height = 30
          Caption = 'Confirmar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
            224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
            3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
            5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
            4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
            402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
            4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
            0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
            0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
            04550500550505560707540B065309065008044D06034D050042002F65312860
            2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
            54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
            044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
            0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
            550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
            2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
            C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
            00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
            FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
            002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
            FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
            07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
            DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
            C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
            5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
            FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
            000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
            056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
            022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
            9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
            B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
            8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
            FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
            B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
            2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
            0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
            5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
            299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
            C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
            36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
            4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
            984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
            FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
            7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
            B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
            CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 0
          Transparent = True
          OnClick = btnConfirmarClick
        end
        object btnCancelar: TNxButton
          Left = 462
          Top = 3
          Width = 147
          Height = 30
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
            1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
            000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
            15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
            3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
            950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
            02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
            363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
            C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
            0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
            0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
            4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
            FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
            0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
            DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
            FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
            0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
            FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
            00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
            FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
            980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
            00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
            0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
            EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
            24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
            0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
            FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
            00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
            B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
            A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
            FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
            0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
            F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
            4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
            0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
            FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
            0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
            0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
            556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
            3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
            0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
            720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
            2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
            E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
            0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
            CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 1
          Transparent = True
          OnClick = btnCancelarClick
        end
        object btnExcluir: TNxButton
          Left = 314
          Top = 3
          Width = 147
          Height = 30
          Hint = 'Excluir '#250'ltimo processo'
          Caption = 'Excluir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
            0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
            010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
            18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
            040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
            440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
            00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
            76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
            C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
            FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
            0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
            80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
            00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
            0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
            C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
            00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
            0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
            B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
            8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
            9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
            C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
            FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
            DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
            DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
            FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
            002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
            FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
            001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
            0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
            CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
            00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
            0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
            EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
            00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
            0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
            F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
            DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
            0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
            C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
            24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
            0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
            C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
            26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
            F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
            DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
            FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
            0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
            F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
            00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
            C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
            FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
            A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 2
          Transparent = True
          OnClick = btnExcluirClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 201
        Align = alTop
        Color = 12910532
        TabOrder = 3
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 87
          Height = 13
          Caption = 'N'#186' Pedido Interno:'
        end
        object Label3: TLabel
          Left = 96
          Top = 40
          Width = 3
          Height = 13
          Caption = '.'
        end
        object Label4: TLabel
          Left = 97
          Top = 57
          Width = 3
          Height = 13
          Caption = '.'
        end
        object Label6: TLabel
          Left = 221
          Top = 12
          Width = 146
          Height = 13
          Caption = 'Pressione Enter para pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 96
          Top = 8
          Width = 121
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 0
          OnKeyDown = CurrencyEdit1KeyDown
        end
        object SMDBGrid1: TSMDBGrid
          Left = 1
          Top = 37
          Width = 814
          Height = 163
          TabStop = False
          Align = alBottom
          Ctl3D = False
          DataSource = DMAprovacao_Ped.dsConsulta_Processo
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = SMDBGrid1DblClick
          Flat = True
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          OnGetCellParams = SMDBGrid1GetCellParams
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO_STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Title.Color = 16777164
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTPROCESSO'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Color = 16777164
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_TRANSPORTADORA'
              Title.Alignment = taCenter
              Title.Caption = 'Transportadora'
              Title.Color = 16777164
              Width = 331
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_RASTREAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Rastreamento'
              Title.Color = 16777164
              Visible = True
            end>
        end
      end
      object Edit1: TEdit
        Left = 144
        Top = 332
        Width = 271
        Height = 21
        MaxLength = 25
        TabOrder = 4
      end
    end
  end
end
