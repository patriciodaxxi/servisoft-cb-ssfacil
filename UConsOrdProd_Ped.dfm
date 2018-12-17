object frmConsOrdProd_Ped: TfrmConsOrdProd_Ped
  Left = 245
  Top = 134
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsOrdProd_Ped'
  ClientHeight = 484
  ClientWidth = 912
  Color = clBtnFace
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
    Width = 912
    Height = 484
    ActivePage = TS_Processo
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    FixedDimension = 19
    object TS_Talao_Auxiliar: TRzTabSheet
      Caption = 'Tal'#227'o Auxiliar'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 97
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object Shape1: TShape
          Left = 764
          Top = 62
          Width = 28
          Height = 15
          Brush.Color = clYellow
        end
        object Label3: TLabel
          Left = 794
          Top = 64
          Width = 68
          Height = 13
          Caption = 'Esta no Atelier'
        end
        object Label4: TLabel
          Left = 794
          Top = 80
          Width = 91
          Height = 13
          Caption = 'Retornou do Atelier'
        end
        object Shape3: TShape
          Left = 764
          Top = 78
          Width = 28
          Height = 15
          Brush.Color = clMoneyGreen
        end
        object SMDBGrid1: TSMDBGrid
          Left = 1
          Top = 1
          Width = 560
          Height = 95
          Align = alLeft
          Ctl3D = False
          DataSource = DMConsLote.dsOrdProd
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
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
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 3
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NUM_ORDEM'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Ordem Produ'#231#227'o'
              Title.Color = 16777170
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Title.Color = 16777170
              Width = 105
              Visible = True
            end>
        end
        object btnCancelar: TNxButton
          Left = 565
          Top = 65
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
          TabOrder = 1
          Transparent = True
          OnClick = btnCancelarClick
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 97
        Width = 908
        Height = 364
        Align = alClient
        Ctl3D = False
        DataSource = DMConsLote.dsTalao_Aux
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        OnGetCellParams = SMDBGrid2GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_ORDEM'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Ordem'
            Title.Color = 16777170
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_LOTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Lote'
            Title.Color = 16777170
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM'
            Title.Alignment = taCenter
            Title.Caption = 'Tal'#227'o'
            Title.Color = 16777170
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_SETOR'
            Title.Alignment = taCenter
            Title.Caption = 'Setor'
            Title.Color = 16777170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_ATELIER'
            Title.Alignment = taCenter
            Title.Caption = 'Atelier'
            Title.Color = 16777170
            Width = 317
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTSAIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Saida Para Atelier'
            Title.Color = 16777170
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTRETORNO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Retorno do Atelier'
            Title.Color = 16777170
            Width = 64
            Visible = True
          end>
      end
    end
    object TS_Processo: TRzTabSheet
      Caption = 'Processos'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 41
        Width = 908
        Height = 420
        Align = alClient
        Ctl3D = False
        DataSource = DMConsLote.dsConsTalao_Ped
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        OnGetCellParams = SMDBGrid3GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 13
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_ORDEM'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Ordem'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_LOTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Lote'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_TALAO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Tal'#227'o'
            Width = 36
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PROCESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Processo'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrada'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRENTRADA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Width = 55
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTBAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Encerrado'
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HRBAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 225
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 908
        Height = 41
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Shape6: TShape
          Left = 16
          Top = 18
          Width = 32
          Height = 17
          Brush.Color = 16777145
        end
        object Label6: TLabel
          Left = 51
          Top = 21
          Width = 93
          Height = 13
          Caption = 'Tal'#227'o em Produ'#231#227'o'
        end
        object Label1: TLabel
          Left = 188
          Top = 20
          Width = 79
          Height = 13
          Caption = 'Tal'#227'o Encerrado'
        end
        object Shape4: TShape
          Left = 153
          Top = 16
          Width = 32
          Height = 17
          Brush.Color = 7864183
        end
      end
    end
    object TS_TalaoPed: TRzTabSheet
      Caption = 'Tal'#227'o Ped'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 461
        Align = alClient
        Ctl3D = False
        DataSource = DMConsLote.dsTalao_Calc
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
        OnGetCellParams = SMDBGrid3GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Title.Color = 13565902
            Width = 31
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_ORDEM'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Ordem'
            Title.Color = 13565902
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_LOTE'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Lote'
            Title.Color = 13565902
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_TALAO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Tal'#227'o'
            Title.Color = 13565902
            Width = 36
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD_PARES_TALAO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd'
            Title.Color = 13565902
            Visible = True
          end>
      end
    end
  end
end
