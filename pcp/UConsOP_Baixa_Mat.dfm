object frmConsOP_Baixa_Mat: TfrmConsOP_Baixa_Mat
  Left = 176
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsOP_Baixa_Mat'
  ClientHeight = 370
  ClientWidth = 1063
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 1063
    Height = 370
    Align = alClient
    Ctl3D = False
    DataSource = DMCadOP.dsConsulta_Baixa_Mat
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
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM_BAIXA'
        Title.Alignment = taCenter
        Title.Caption = 'Item Baixa'
        Title.Color = 16777143
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM_MAT'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 16777143
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'ID Material'
        Title.Color = 16777143
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Material'
        Title.Color = 16777143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Material'
        Title.Color = 16777143
        Width = 344
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Baixada Estoque'
        Title.Color = 16777143
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 16777143
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_LOCAL_ESTOQUE'
        Title.Alignment = taCenter
        Title.Caption = 'Local Estoque'
        Title.Color = 16777143
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_CONSUMO'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Consumo'
        Title.Color = 16777143
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_MOVESTOQUE'
        Title.Alignment = taCenter
        Title.Caption = 'ID Estoque'
        Title.Color = 16777143
        Width = 63
        Visible = True
      end>
  end
end
