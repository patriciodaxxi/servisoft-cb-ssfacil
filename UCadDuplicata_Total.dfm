object frmCadDuplicata_Total: TfrmCadDuplicata_Total
  Left = 209
  Top = 230
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadDuplicata_Total'
  ClientHeight = 276
  ClientWidth = 959
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape15: TShape
    Left = 10
    Top = 240
    Width = 463
    Height = 32
    Brush.Color = clBtnFace
  end
  object Label48: TLabel
    Left = 14
    Top = 251
    Width = 241
    Height = 16
    Alignment = taRightJustify
    Caption = 'Saldo (Receber - Pagar - Cheque):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSaldo: TLabel
    Left = 257
    Top = 251
    Width = 160
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Color = 8454016
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object gbxContasReceber: TRzGroupBox
    Left = 6
    Top = 7
    Width = 470
    Height = 225
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Contas a Receber'
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    object Shape6: TShape
      Left = 2
      Top = 66
      Width = 455
      Height = 102
      Brush.Color = clBtnFace
    end
    object Shape5: TShape
      Left = 2
      Top = 43
      Width = 252
      Height = 24
      Brush.Color = clBtnFace
    end
    object Shape4: TShape
      Left = 2
      Top = 20
      Width = 252
      Height = 24
      Brush.Color = clBtnFace
    end
    object Shape3: TShape
      Left = 281
      Top = 128
      Width = 151
      Height = 38
      Brush.Color = clBtnFace
    end
    object Shape2: TShape
      Left = 281
      Top = 88
      Width = 151
      Height = 38
      Brush.Color = clBtnFace
    end
    object Shape1: TShape
      Left = 129
      Top = 88
      Width = 151
      Height = 38
      Brush.Color = clBtnFace
    end
    object Label36: TLabel
      Left = 44
      Top = 27
      Width = 83
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCReceber: TLabel
      Left = 130
      Top = 26
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label38: TLabel
      Left = 6
      Top = 48
      Width = 121
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vlr. J'#225' Recebido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCReceber_Pago: TLabel
      Left = 130
      Top = 48
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label39: TLabel
      Left = 16
      Top = 70
      Width = 111
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total Pendente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCReceber_Pend: TLabel
      Left = 130
      Top = 70
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label22: TLabel
      Left = 340
      Top = 85
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cart'#243'rio:'
    end
    object Label28: TLabel
      Left = 370
      Top = 147
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object lblCReceber_Protesto_Perc: TLabel
      Left = 381
      Top = 147
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label24: TLabel
      Left = 369
      Top = 107
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object lblCReceber_Cartorio_Perc: TLabel
      Left = 380
      Top = 107
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label42: TLabel
      Left = 164
      Top = 85
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Em Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCReceber_Atraso: TLabel
      Left = 131
      Top = 107
      Width = 86
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object lblCReceber_Cartorio: TLabel
      Left = 283
      Top = 107
      Width = 86
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label26: TLabel
      Left = 345
      Top = 127
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Protesto:'
    end
    object lblCReceber_Protesto: TLabel
      Left = 284
      Top = 147
      Width = 86
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label3: TLabel
      Left = 219
      Top = 107
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object lblCReceber_Atraso_Perc: TLabel
      Left = 230
      Top = 107
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 486
    Top = 6
    Width = 467
    Height = 225
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = 'Contas a Pagar'
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object Shape13: TShape
      Left = 3
      Top = 175
      Width = 306
      Height = 24
      Brush.Color = clBtnFace
    end
    object Shape9: TShape
      Left = 3
      Top = 65
      Width = 455
      Height = 104
      Brush.Color = clBtnFace
    end
    object Shape12: TShape
      Left = 283
      Top = 129
      Width = 151
      Height = 38
      Brush.Color = clBtnFace
    end
    object Shape11: TShape
      Left = 283
      Top = 89
      Width = 151
      Height = 38
      Brush.Color = clBtnFace
    end
    object lblCPagar_Protesto: TLabel
      Left = 286
      Top = 148
      Width = 86
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label11: TLabel
      Left = 347
      Top = 128
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Protesto:'
    end
    object lblCPagar_Cartorio: TLabel
      Left = 285
      Top = 108
      Width = 86
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object lblCPagar_Cartorio_Perc: TLabel
      Left = 380
      Top = 108
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label8: TLabel
      Left = 371
      Top = 108
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object lblCPagar_Protesto_Perc: TLabel
      Left = 381
      Top = 148
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label6: TLabel
      Left = 372
      Top = 148
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object Label5: TLabel
      Left = 343
      Top = 86
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cart'#243'rio:'
    end
    object Shape10: TShape
      Left = 131
      Top = 89
      Width = 151
      Height = 38
      Brush.Color = clBtnFace
    end
    object Shape8: TShape
      Left = 3
      Top = 42
      Width = 252
      Height = 24
      Brush.Color = clBtnFace
    end
    object Shape7: TShape
      Left = 3
      Top = 19
      Width = 252
      Height = 24
      Brush.Color = clBtnFace
    end
    object Label37: TLabel
      Left = 45
      Top = 23
      Width = 83
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCPagar: TLabel
      Left = 131
      Top = 24
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 5
      Top = 179
      Width = 177
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vlr. em Cheques a Pagar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCheque: TLabel
      Left = 184
      Top = 181
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label40: TLabel
      Left = 39
      Top = 47
      Width = 90
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vlr. J'#225' Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCPagar_Pago: TLabel
      Left = 131
      Top = 47
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 46
      Top = 69
      Width = 85
      Height = 16
      Alignment = taRightJustify
      Caption = 'V.Pendente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCPagar_Pend: TLabel
      Left = 131
      Top = 70
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label44: TLabel
      Left = 175
      Top = 86
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total em Atraso'
    end
    object lblCPagar_Atraso: TLabel
      Left = 133
      Top = 107
      Width = 86
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object lblCPagar_Atraso_Perc: TLabel
      Left = 232
      Top = 108
      Width = 47
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      ParentColor = False
    end
    object Label2: TLabel
      Left = 221
      Top = 108
      Width = 8
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object Shape14: TShape
      Left = 3
      Top = 198
      Width = 306
      Height = 24
      Brush.Color = clBtnFace
    end
    object Label53: TLabel
      Left = 50
      Top = 201
      Width = 132
      Height = 16
      Alignment = taRightJustify
      Caption = 'Cheque em Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCheque_Atraso: TLabel
      Left = 184
      Top = 201
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object btnCancelar: TNxButton
    Left = 800
    Top = 243
    Width = 153
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
    TabOrder = 2
    Transparent = True
    OnClick = btnCancelarClick
  end
end
