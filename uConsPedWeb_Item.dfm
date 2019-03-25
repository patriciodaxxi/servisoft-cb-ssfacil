object frmConsPedWeb_Item: TfrmConsPedWeb_Item
  Left = 293
  Top = 226
  BorderStyle = bsSingle
  Caption = 'frmConsPedWeb_Item'
  ClientHeight = 244
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 898
    Height = 244
    Align = alClient
    DataSource = DMCadPedWeb.dsPedWeb_Item
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PEDIDO'
        Title.Alignment = taCenter
        Title.Color = clHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Color = clHighlight
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taCenter
        Title.Color = clHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Alignment = taCenter
        Title.Color = clHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DESCONTO'
        Title.Alignment = taCenter
        Title.Color = clHighlight
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Alignment = taCenter
        Title.Color = clHighlight
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Title.Alignment = taCenter
        Title.Caption = 'Observa'#231#227'o'
        Title.Color = clHighlight
        Width = 396
        Visible = True
      end>
  end
end
