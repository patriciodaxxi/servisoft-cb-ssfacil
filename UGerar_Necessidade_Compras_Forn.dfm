object frmGerar_Necessidade_Compras_Forn: TfrmGerar_Necessidade_Compras_Forn
  Left = 398
  Top = 203
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar o Fornecedor'
  ClientHeight = 119
  ClientWidth = 538
  Color = 12320699
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 57
    Height = 13
    Caption = 'Fornecedor:'
  end
  object SpeedButton4: TSpeedButton
    Left = 506
    Top = 21
    Width = 23
    Height = 22
    Hint = 'Atualiza tabela Produtos'
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
      F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
      F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
      CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
      E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
      B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
      F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
      9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
      FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
      53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
      FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
      F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
      FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
      FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
      BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
      F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
      BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
      92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
      997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
      CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
      FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
      FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
      FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
      FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
      C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
      FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
      BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
      E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
      78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
      C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
      FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
      EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
      F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
      FFFEFEFFFFFFFFFFFFFF}
    Margin = 0
    OnClick = SpeedButton4Click
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 115
    Top = 24
    Width = 390
    Height = 21
    DropDownCount = 8
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = DMCadNecessidade_Compras.dsFornecedor
    TabOrder = 0
    OnKeyDown = RxDBLookupCombo1KeyDown
  end
  object CheckBox1: TCheckBox
    Left = 128
    Top = 56
    Width = 321
    Height = 17
    Caption = 'Gravar o fornecedor para o material com cor diferente'
    Checked = True
    State = cbChecked
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 78
    Width = 538
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object btnConfirmar: TNxButton
      Left = 84
      Top = 6
      Width = 190
      Height = 30
      Caption = 'Confirmar'
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
      Left = 274
      Top = 6
      Width = 190
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
  end
end