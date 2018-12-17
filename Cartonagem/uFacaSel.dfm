object fFacaSel: TfFacaSel
  Left = 174
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'fFacaSel'
  ClientHeight = 299
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 890
    Height = 299
    ActivePage = RzTabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object RzTabSheet1: TRzTabSheet
      Caption = 'Fundo'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 276
        Align = alClient
        DataSource = dmFaca.dsFacaFD
        FixedColor = 13743257
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
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
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COMPR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_LARGURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ALTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_CAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_LAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COPIAS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COPIAS_L'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
    end
    object RzTabSheet2: TRzTabSheet
      Caption = 'Tampa'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 276
        Align = alClient
        DataSource = dmFaca.dsFacaFD
        FixedColor = clMoneyGreen
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid2DblClick
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
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COMPR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_LARGURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ALTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_CAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_ABA_INT_LAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COPIAS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FD_COPIAS_L'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
    end
    object RzTabSheet3: TRzTabSheet
      Caption = 'Suporte'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 276
        Align = alClient
        FixedColor = 8963327
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid3DblClick
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
        ColCount = 2
        RowCount = 2
      end
    end
  end
end
