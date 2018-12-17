object frmConsPedido_Real: TfrmConsPedido_Real
  Left = 135
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsPedido_Real'
  ClientHeight = 449
  ClientWidth = 1004
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
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 0
    Width = 1004
    Height = 186
    Align = alClient
    Ctl3D = False
    DataSource = DMCadPedido.dsPedido_Itens
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Title.Color = 16777139
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Color = 16777139
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Title.Color = 16777139
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Color = 16777139
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Color = 16777139
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO'
        Title.Color = 16777139
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_MATERIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Material'
        Title.Color = 16777139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Color = 16777139
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tempo'
        Title.Color = 16777139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEMPO_REAL'
        Title.Alignment = taCenter
        Title.Caption = 'Tempo Real'
        Title.Color = 16777139
        Width = 73
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 186
    Width = 1004
    Height = 263
    Align = alBottom
    Color = 16762566
    TabOrder = 1
    object Label3: TLabel
      Left = 10
      Top = 50
      Width = 125
      Height = 14
      Alignment = taRightJustify
      Caption = 'Comprimento (mm):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 49
      Top = 69
      Width = 86
      Height = 14
      Alignment = taRightJustify
      Caption = 'largura (mm):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 80
      Top = 15
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 371
      Top = 98
      Width = 36
      Height = 14
      Alignment = taRightJustify
      Caption = 'Peso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 28
      Top = 88
      Width = 107
      Height = 14
      Alignment = taRightJustify
      Caption = 'Espessura (mm):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 335
      Top = 48
      Width = 72
      Height = 14
      Alignment = taRightJustify
      Caption = 'Densidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 267
      Top = 67
      Width = 140
      Height = 14
      Alignment = taRightJustify
      Caption = 'Vlr. Material (Unit'#225'rio):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 276
      Top = 152
      Width = 131
      Height = 14
      Alignment = taRightJustify
      Caption = 'Vlr. Total do Material:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 321
      Top = 122
      Width = 86
      Height = 14
      Alignment = taRightJustify
      Caption = 'Fator C'#225'lculo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 67
      Top = 200
      Width = 76
      Height = 14
      Alignment = taRightJustify
      Caption = 'Vlr. Unit'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 255
      Top = 200
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = 'Real:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 37
      Top = 219
      Width = 106
      Height = 14
      Alignment = taRightJustify
      Caption = 'Fator de C'#225'lculo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 255
      Top = 219
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = 'Real:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 34
      Top = 238
      Width = 109
      Height = 14
      Alignment = taRightJustify
      Caption = 'Tempo Produ'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 255
      Top = 238
      Width = 32
      Height = 14
      Alignment = taRightJustify
      Caption = 'Real:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 136
      Top = 44
      Width = 100
      Height = 20
      Color = 14737632
      Ctl3D = False
      DataField = 'COMPRIMENTO'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 136
      Top = 63
      Width = 100
      Height = 20
      Color = 14737632
      Ctl3D = False
      DataField = 'LARGURA'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 408
      Top = 92
      Width = 100
      Height = 20
      TabStop = False
      Color = 14737632
      Ctl3D = False
      DataField = 'PESO'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 82
      Width = 100
      Height = 20
      Color = 14737632
      Ctl3D = False
      DataField = 'ESPESSURA'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 408
      Top = 146
      Width = 100
      Height = 20
      TabStop = False
      Color = 14737632
      Ctl3D = False
      DataField = 'VLR_TOTAL'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 408
      Top = 40
      Width = 100
      Height = 20
      TabStop = False
      Color = 14737632
      Ctl3D = False
      DataField = 'DENSIDADE'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 408
      Top = 59
      Width = 100
      Height = 20
      TabStop = False
      Color = 14737632
      Ctl3D = False
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 408
      Top = 116
      Width = 100
      Height = 20
      TabStop = False
      Color = 14737632
      Ctl3D = False
      DataField = 'FATOR_CALCULO'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 136
      Top = 9
      Width = 372
      Height = 20
      Color = 14737632
      Ctl3D = False
      DataField = 'clNomeTipo_Mat'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 144
      Top = 194
      Width = 100
      Height = 20
      TabStop = False
      Color = 13303754
      Ctl3D = False
      DataField = 'VLR_UNITARIO'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 288
      Top = 194
      Width = 100
      Height = 20
      TabStop = False
      Color = 13303754
      Ctl3D = False
      DataField = 'VLR_UNITARIO_REAL'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 144
      Top = 213
      Width = 100
      Height = 20
      TabStop = False
      Color = 13303754
      Ctl3D = False
      DataField = 'FATOR_CALCULO'
      DataSource = DMCadPedido.dsPedido_Item_Tipo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 288
      Top = 213
      Width = 100
      Height = 20
      TabStop = False
      Color = 13303754
      Ctl3D = False
      DataField = 'FATOR_CALCULO_REAL'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit14: TDBEdit
      Left = 144
      Top = 232
      Width = 100
      Height = 20
      TabStop = False
      Color = 13303754
      Ctl3D = False
      DataField = 'TEMPO'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit15: TDBEdit
      Left = 288
      Top = 232
      Width = 100
      Height = 20
      TabStop = False
      Color = 13303754
      Ctl3D = False
      DataField = 'TEMPO_REAL'
      DataSource = DMCadPedido.dsPedido_Itens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
  end
end
