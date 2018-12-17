object frmConsAgenda: TfrmConsAgenda
  Left = 185
  Top = 96
  Width = 1034
  Height = 525
  Caption = 'frmConsAgenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 487
    Align = alClient
    TabOrder = 0
    object pnlConsulta: TPanel
      Left = 1
      Top = 1
      Width = 1016
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      Color = clSilver
      TabOrder = 0
      object lblCliente: TLabel
        Left = 35
        Top = 18
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object lblDataFinal: TLabel
        Left = 243
        Top = 47
        Width = 51
        Height = 13
        Caption = 'Data Final:'
      end
      object lblDataInicial: TLabel
        Left = 14
        Top = 47
        Width = 56
        Height = 13
        Caption = 'Data Inicial:'
      end
      object rxdblCliente: TRxDBLookupCombo
        Left = 75
        Top = 12
        Width = 344
        Height = 21
        DropDownCount = 8
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DMCadAgenda.dsPessoa
        TabOrder = 0
      end
      object dteInicial: TDateEdit
        Left = 75
        Top = 39
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object dteFinal: TDateEdit
        Left = 298
        Top = 39
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object chkConcluido: TCheckBox
        Left = 430
        Top = 9
        Width = 129
        Height = 17
        Caption = 'Mostrar os conclu'#237'dos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object btnConsultar: TNxButton
        Left = 430
        Top = 30
        Width = 177
        Height = 30
        Caption = 'Efetuar Pesquisa'
        Down = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Glyph.Data = {
          AE060000424DAE06000000000000360000002800000017000000170000000100
          1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
          72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
          0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
          A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
          109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
          EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
          A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
          B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
          97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
          5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
          98634797653998765499876899927799977F99967F99907799826295704B9B64
          3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
          99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
          6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
          34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
          DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
          AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
          90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
          F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
          E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
          B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
          574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
          96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
          C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
          D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 4
        Transparent = True
        OnClick = btnConsultarClick
      end
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 82
      Width = 1016
      Height = 250
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1016
        Height = 250
        Align = alClient
        DataSource = DMCadAgenda.dsConsulta
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
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
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'DTAGENDA'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HRAGENDA'
            Title.Alignment = taCenter
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITULO'
            Title.Alignment = taCenter
            Width = 348
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEFUNCIONARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Funcion'#225'rio'
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Pessoa'
            Width = 289
            Visible = True
          end>
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 332
      Width = 1016
      Height = 154
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 0
        Width = 1016
        Height = 154
        ActivePage = TabSheet4
        Align = alClient
        TabIndex = 3
        TabOrder = 0
        FixedDimension = 19
        object TabSheet1: TRzTabSheet
          Caption = 'Observa'#231#227'o'
          object DBMemo1: TDBMemo
            Left = 0
            Top = 0
            Width = 1012
            Height = 131
            Align = alClient
            DataField = 'OBS'
            DataSource = DMCadAgenda.dsConsulta
            TabOrder = 0
          end
        end
        object TabSheet2: TRzTabSheet
          Caption = 'Pauta'
          object DBMemo2: TDBMemo
            Left = 0
            Top = 0
            Width = 1012
            Height = 131
            Align = alClient
            DataField = 'PAUTA'
            DataSource = DMCadAgenda.dsConsulta
            TabOrder = 0
          end
        end
        object TabSheet3: TRzTabSheet
          Caption = 'Decis'#227'o'
          object DBMemo3: TDBMemo
            Left = 0
            Top = 0
            Width = 1012
            Height = 131
            Align = alClient
            DataField = 'DESCISOES'
            DataSource = DMCadAgenda.dsConsulta
            TabOrder = 0
          end
        end
        object TabSheet4: TRzTabSheet
          Caption = 'Pend'#234'ncia'
          object DBMemo4: TDBMemo
            Left = 0
            Top = 0
            Width = 1012
            Height = 131
            Align = alClient
            DataField = 'PENDENCIAS'
            DataSource = DMCadAgenda.dsConsulta
            TabOrder = 0
          end
        end
      end
    end
  end
end
