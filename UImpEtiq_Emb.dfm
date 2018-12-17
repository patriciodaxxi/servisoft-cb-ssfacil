object frmImpEtiq_Emb: TfrmImpEtiq_Emb
  Left = 150
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmImpEtiq_Emb'
  ClientHeight = 449
  ClientWidth = 1037
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 35
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object NxButton1: TNxButton
      Left = 308
      Top = 5
      Width = 108
      Height = 28
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 414
      Top = 5
      Width = 108
      Height = 28
      Caption = 'Cancelar/Fechar'
      TabOrder = 1
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 2
      Top = 5
      Width = 123
      Height = 28
      Caption = 'Marcar todos'
      TabOrder = 2
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 122
      Top = 5
      Width = 123
      Height = 28
      Caption = 'Desmarcar todos'
      TabOrder = 3
      OnClick = NxButton4Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 35
    Width = 1037
    Height = 414
    Align = alClient
    Ctl3D = False
    DataSource = DMPedidoImp.dsPedEmb
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
        FieldName = 'SELECIONADO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Selecionado'
        Title.Color = 13762468
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 13762468
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Title.Color = 13762468
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Color = 13762468
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_COMBINACAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Combina'#231#227'o'
        Title.Color = 13762468
        Width = 283
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Title.Color = 13762468
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD_EMB'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Embalagem'
        Title.Color = 13762468
        Visible = True
      end>
  end
end
