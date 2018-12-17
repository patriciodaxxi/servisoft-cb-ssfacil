object frmGerarXML_NFe: TfrmGerarXML_NFe
  Left = 236
  Top = 90
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Notas Entrada/Sa'#237'da'
  ClientHeight = 535
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 108
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 95
      Top = 13
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label6: TLabel
      Left = 222
      Top = 37
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Shape2: TShape
      Left = 742
      Top = 10
      Width = 30
      Height = 16
      Brush.Color = clRed
    end
    object Label10: TLabel
      Left = 774
      Top = 13
      Width = 51
      Height = 13
      Caption = 'Cancelada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 50
      Top = 37
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Emiss'#227'o:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 120
      Top = 7
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsNotaEletronica.dsFilial
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 120
      Top = 29
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 248
      Top = 29
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object btnConsultar: TNxButton
      Left = 120
      Top = 50
      Width = 177
      Height = 30
      Caption = 'Efetuar Pesquisa'
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
      TabOrder = 3
      Transparent = True
      OnClick = btnConsultarClick
    end
    object btnGravar_XML: TNxButton
      Left = 299
      Top = 50
      Width = 177
      Height = 30
      Caption = 'Gravar XML'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FEFEFAFAF8F7
        FEFBFDFBFBFAF0F0EFEEEFEFEAEEEDE5EBE9E7E8E8E9EAE9E8EAE9E9EAEAE8EB
        E9E9E9E9E8EAE9E8E9E8E9EBE9E9EAEAE9EAE9E9E9E9E8EAE8E8E7E7F3F1EFFD
        FFFFE9F6F8B0E3E8CBF3FBDDD2CBBC9E88C1A28BC3A58FE1CEC0E4CEC1E5CEC1
        E5D0C3E7D1C3E7D2C5E6D2C5E7D2C5E7CFC1E7D3C5E8D2C4E7D0C3E7D2C3E7D3
        C2E4CEBCECE0D1FDFEFFEDF4F7B9F1FAB2ECF4BCA592B99277B59279D9C0ACE3
        CFBDDEC5B3DEC7B6E4CBB9E5CBB9E4C9B7E3C9B8E4CAB8E4CBB8E2C8B7E6CCBA
        E5CBB9E4CAB9E1C8B9EFD6C3F6E9DDF8F8FAFAF6F6F3F3F2C5B6A8CFAA8FCDAB
        91DDCFB8F3E2D1EEE0CFF8EAD9F9E2D0EEDCCBF1D9CBF6E0CFF8E4D2F3DDCEF1
        DCCFF1DDCCEFDFCFEBD9CBEDD9C7ECD6C7EDD7C6F2E5D9F7F7F5FDFCFBF9F6F5
        D1B9A7D6B49FCFC7AAAACC99E6E3D23B3434F2F3EACCC3B9746B64BDB0A7B9B2
        AA837A75B0A29BA59A92DCCABE4845455D57569B9189F9E8D9F1DAC8F6E7DBFC
        FCFAFCFBFAFFFFFFF5F2EDE6D9CEF6E5D9E9DCCFD2C1D7B5AFAF0000003A3837
        ACA79E9F989076706D100E0E524947625D5BC7BCB1615D5BEDE6DCE6D7CCF6E5
        DBF2DFD2FAEDE2FDFEFCFDFCFCFFFEFCFEFFFFEFE8E1F3DFD3F7E4D8F5DFD0FF
        FFFF2F29284A4643FFFFFF9F918B6963645B5851272620857977C4B8AE776D6A
        FFFDF1F5E2D6F2E0D5F0DED1F7EBDFFFFFFDFAF9F8FBFAF9FCFBFAEBE3DCF0DE
        D5F0DFD7FCECE4DFD5CE1917186E6C69D4C7BEA198974B4C4DFBEEE422212387
        8682C5BAAE717269FFF4EAEDDDD5F0DFD7EFDED4F5EADFF8FBF7FDFCFBFEFDFC
        FBFCFDF0E7E0F4E3D9F7E7DDFFF4ED8B8E87EBE4DFE0D5CEB4AAA5D9CDC7B4AC
        ABFFF6EBABA6A3CDC3BBE9DCD4C7BDB9FFEFE6F5E5DCF8E7DFF4E3D9F7EDE3FC
        FEFCFBFAF9FCFBFAFCFCF9EDE5DEF0E1D9F3E1D4F2DED0F7EDE0F8E8D9F8E7D8
        F6E9DDF8E6D9F9EBDEF5E1D3FBEEE0F7E7DAF6E6D8F7EADBF3E1D2F2E0D2F2E0
        D2F3E0D7F4EBE1FCFBFBFBFBFAFCFBFBFBFCFBEFE8E3F7E5DFDCCCC1D3C4B6D7
        C3B7D5C4B8D5C3B6D9C6BBE0D3CBDDD4C8DAD1C7E0D0C8D7C9B9D6BFB5D5C2B8
        D6C4B7D5C3B7D4C3B7EADAD2FAEEE8FDFCFBFAFBFAFCFBFAFBFCFAF0E6E2F9E7
        E0FBEBE5FCEDE6FBEBE5FCECE7FFF4EEF7F3EDD0B9AFBD9683BC9983D8C6BAFF
        FFFFFFF9F8FBE9E2FAEEE6FAEFE6FDEDE7F9E8E1FAEFE9FAFBF9FFFCFBFFFDFC
        FDFDFCF2EAE6F9EAE1F9E9E2FEF0E6FFF9F2FDF1EAF8EBE4BE896F7E2501892E
        08993F158F3E17833F1BE6E0DCFFFFF9FFF1EBFFF2EBF8E9E3F9E9E2FBF1EBFE
        FDFCFDFCFBFEFCFBFDFEFCF4EDE8F9EAE3FFFFEDECE9EC9E99B0FEF7F1BE8975
        C68D7AAE6143933F1995421BA85C349B4820925023FAF1EACCC5D6DCD7DBFFFF
        EFFAE9E4FCF1ECFDFDFAF2F2F1F4F3F1F3F2F0E9E1D9FFF4E5D7D7DC565395C0
        C5D6D0A18BB37057DEBFB3E0BCADA155318C28019949248F30086F1A00A07059
        DBDAEA645C98C8C0D0FFF6E8F1E8E1F3F2EFFBFBFBFCFCFCFAFAFAFBF9EBC9C5
        DE7472B5E8EAE9FFFFFFBB8B78D6B2A6F3D8CCD2ACA0CBA08AB35626E1C0AA9D
        5A53AD6E5D954C34F9F3EEEEEEED7976BCC2C0DCFFFEF1FCFBFBFFFFFFFFFFFF
        FEFDFDF7F6EEF2F1ED8782D6CFCDE9FFFFFBFCF9E7FDEEECF5F1EDECDFD1EFE1
        D9F7EDE1FFF8FDFCF4F4FDF5E998553BF5ECE6D0D4EB8183D0E2DDEEFFFCF3FF
        FFFDF7F6F5F8F6F6F7F6F4EEECE4FBF5EBFFFEF4867CDEBBBFF4EFE0CBE6DCD4
        C4886DDCC3B4F2E9E4F9F7F5F8F3F2F8F4F5EEE4DEB0876ACECFEF9089E0F9F5
        F6FEF9EBF6EDE7F8F7F4F7F6F6F7F7F7F8F7F4F2EEE9F9F2EEFCF7EDF5F3EEE3
        E6F1F5F2ED9B684CC89983FCFEFAFAF7F4FFFFFFFAFEFFFEFFFFD7CAC4E2D5CC
        F1F3F8F9F3F1FBF5ECECE2D9E8DAD4F9F9F7F7F7F7F7F8F7F8F7F4F3EFEAF8F5
        F1F8F6F4F9F6F2FBF6F3FEFEF9EFE9E7A26E55B88064DCC4B6C9A9A0E9D8D4FE
        FDF9DCD4D1FFFCFEF3E9E6E4DBD7DDCEC7C9B8A9E1D9D3F9FCFAFEFEFCFEFEFD
        FDFCFEF7F4EFFDFAF7FEFBFAFEFCFAFFF9F9FEFBF7FFFFFFFEFAFADEC5B9C295
        82C08776E1C7BDFEFCFAFFFFFFFDF4F4E2D9D3F0EAE7F3E9E4EEE7E3FFFFFFFE
        FEFCFEFDFCFEFEFCFEFCFDF9F5F3FDFBF9FEFCFAFEFCFAFEFBF9FEFBF9FEFAF9
        FFFEFEFFFFFFFDFCFDFEFDFDFEFEFDFEFDFBFFFCFEFAF2F2D0C0B9EADDD9F6F0
        ECFCFDFEFEFDFDFEFDFCF5F3F2F5F3F3F5F3F2EFEBE8F6F2F3F6F3F4F6F3F4F5
        F3F4F6F3F4F5F3F4F5F3F5F6F1F4F5F2F3F5F1F2F7F1F1F8F1F3F0EAE7CCC1B9
        C8BDB4F6F4F0F5F4F3F5F4F4F5F3F2F5F3F2FDFCFBFDFCFBFDFCFCFCF8F5FDFC
        F8FDFCF8FDFCF8FDFCF8FDFCF8FEFDF8FDFCF7FDFCF8FEFCF8FEFCF8FEFDF9FE
        FDFAFAF5F5EEEBE7FBFAF6FFFEFFFDFCFBFDFCFBFDFCFBFDFCFB}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 4
      Transparent = True
      OnClick = btnGravar_XMLClick
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 108
    Width = 895
    Height = 427
    ActivePage = TS_NFCe
    Align = alClient
    TabIndex = 1
    TabOrder = 1
    FixedDimension = 19
    object TS_NFe: TRzTabSheet
      Caption = 'Nota Fiscal'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 891
        Height = 404
        Align = alClient
        Ctl3D = False
        DataSource = DMConsNotaEletronica.dsNotaFiscal
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid1TitleClick
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 21
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'E / S'
            Title.Color = 10354492
            Width = 37
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODCFOP'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. CFOP'
            Title.Color = 10354492
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Title.Color = 10354492
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Title.Color = 10354492
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Title.Color = 10354492
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 10354492
            Width = 316
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Title.Color = 10354492
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BASE_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS'
            Title.Color = 10354492
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BASE_ICMSSIMPLES'
            Title.Alignment = taCenter
            Title.Caption = 'Base ICMS Simples'
            Title.Color = 10354492
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMS'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ICMS'
            Title.Color = 10354492
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ICMSSIMPLES'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. ICMS Simples'
            Title.Color = 10354492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_FRETE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Frete'
            Title.Color = 10354492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_IPI'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. IPI'
            Title.Color = 10354492
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CANCELADA'
            Title.Alignment = taCenter
            Title.Caption = 'Cancelada'
            Title.Color = 10354492
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NFEDENEGADA'
            Title.Alignment = taCenter
            Title.Caption = 'Denegada'
            Title.Color = 10354492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO_CANCELADA'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo Cancelada'
            Title.Color = 10354492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO_DENEGADA'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo Denegada'
            Title.Color = 10354492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFECHAVEACESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Chave de Acesso NFe'
            Title.Color = 10354492
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFEPROTOCOLO'
            Title.Alignment = taCenter
            Title.Caption = 'Protocolo NFe'
            Title.Color = 10354492
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFERECIBO'
            Title.Alignment = taCenter
            Title.Caption = 'Recibo NFe'
            Title.Color = 10354492
            Visible = True
          end>
      end
    end
    object TS_NFCe: TRzTabSheet
      Caption = 'Cupom Fiscal'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 891
        Height = 404
        Align = alClient
        Ctl3D = False
        DataSource = DMConsNotaEletronica.dsCupom
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid2TitleClick
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid2GetCellParams
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
            FieldName = 'CODCFOP'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. CFOP'
            Title.Color = 16777124
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Title.Color = 16777124
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMCUPOM'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Cupom'
            Title.Color = 16777124
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Emiss'#227'o'
            Title.Color = 16777124
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 16777124
            Width = 316
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Title.Color = 16777124
            Width = 83
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CANCELADO'
            Title.Alignment = taCenter
            Title.Caption = 'Cancelada'
            Title.Color = 16777124
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NFEDENEGADA'
            Title.Alignment = taCenter
            Title.Caption = 'Denegada'
            Title.Color = 16777124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFECHAVEACESSO'
            Title.Alignment = taCenter
            Title.Caption = 'Chave de Acesso NFe'
            Title.Color = 16777124
            Width = 308
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFEPROTOCOLO'
            Title.Alignment = taCenter
            Title.Caption = 'Protocolo NFe'
            Title.Color = 16777124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFERECIBO'
            Title.Alignment = taCenter
            Title.Caption = 'Recibo NFe'
            Title.Color = 16777124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO_CANCELADA'
            Title.Alignment = taCenter
            Title.Caption = 'Motivo Cancelada'
            Title.Color = 16777124
            Width = 496
            Visible = True
          end>
      end
    end
  end
end
