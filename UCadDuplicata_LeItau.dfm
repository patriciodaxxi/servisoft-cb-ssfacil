object frmCadDuplicata_LeItau: TfrmCadDuplicata_LeItau
  Left = 234
  Top = 15
  Width = 1002
  Height = 686
  Caption = 'frmCadDuplicata_LeItau'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 986
    Height = 648
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Arquivo do Banco It'#225'u'
      object Label1: TLabel
        Left = 30
        Top = 10
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Arquivo:'
      end
      object Label2: TLabel
        Left = 264
        Top = 32
        Width = 123
        Height = 13
        Caption = 'Qtd. de T'#237'tulos no Banco:'
      end
      object Label3: TLabel
        Left = 392
        Top = 31
        Width = 6
        Height = 13
        Caption = '0'
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 63
        Width = 978
        Height = 557
        Align = alBottom
        DataSource = DMCadDuplicata.dsmLeItau
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NumDuplicata'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Parcela'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Cliente'
            Width = 336
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SeuNumero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NossoNumero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtVencimento'
            Visible = True
          end>
      end
      object FilenameEdit1: TFilenameEdit
        Left = 72
        Top = 2
        Width = 585
        Height = 21
        NumGlyphs = 1
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 72
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Ler'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Verifica'#231#227'o das duplicatas'
      ImageIndex = 1
      object Label4: TLabel
        Left = 184
        Top = 24
        Width = 205
        Height = 13
        Caption = 'Qtd. de T'#237'tulos n'#227'o encontrados no banco:'
      end
      object Label5: TLabel
        Left = 392
        Top = 24
        Width = 6
        Height = 13
        Caption = '0'
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 64
        Width = 978
        Height = 556
        Align = alBottom
        DataSource = DMCadDuplicata.dsmLeItau2
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumDuplicata'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Parcela'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NossoNumero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NossoNumeroItau'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Obs'
            Width = 395
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 14
        Top = 12
        Width = 75
        Height = 25
        Caption = 'Verificar'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
  end
end
