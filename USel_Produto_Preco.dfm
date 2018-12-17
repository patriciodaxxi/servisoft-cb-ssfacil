object frmSel_Produto_Preco: TfrmSel_Produto_Preco
  Left = 443
  Top = 204
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 343
  ClientWidth = 497
  Color = 14811076
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 300
    Height = 40
    Caption = 'Pressione ENTER ou '#13#10'Duplo Clique sobre o Pre'#231'o escolhido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 88
    Width = 497
    Height = 255
    Align = alBottom
    Ctl3D = False
    DataSource = dsmPreco
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
        FieldName = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Color = 16744576
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -16
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 295
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Pre'#231'o'
        Title.Color = 16744576
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -16
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 114
        Visible = True
      end>
  end
  object mPreco: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Preco'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 264
    Top = 176
    Data = {
      4E0000009619E0BD0100000018000000030000000000030000004E0004497465
      6D0400010000000000044E6F6D65010049000000010005574944544802000200
      280005507265636F08000400000000000000}
    object mPrecoItem: TIntegerField
      FieldName = 'Item'
    end
    object mPrecoNome: TStringField
      DisplayWidth = 52
      FieldName = 'Nome'
      Size = 40
    end
    object mPrecoPreco: TFloatField
      DisplayWidth = 18
      FieldName = 'Preco'
    end
  end
  object dsmPreco: TDataSource
    DataSet = mPreco
    Left = 288
    Top = 176
  end
end
