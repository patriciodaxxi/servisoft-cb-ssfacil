object frmGerar_Lote_AuxEst: TfrmGerar_Lote_AuxEst
  Left = 339
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmGerar_Lote_AuxEst'
  ClientHeight = 500
  ClientWidth = 566
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
    Top = 166
    Width = 566
    Height = 334
    Align = alClient
    Ctl3D = False
    DataSource = DMCadLote.dsSaldoEst
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = SMDBGrid2DblClick
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
    DefaultRowHeight = 20
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_LOTE_CONTROLE'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Lote Controle '
        Width = 158
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QTD2'
        Title.Alignment = taCenter
        Title.Caption = 'Quantidade'
        Width = 118
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 125
    Width = 566
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 511
      Height = 16
      Caption = 
        'Duplo Clique para Selecionar qual o Lote de Controle que vai ser' +
        ' usado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlSemi: TPanel
    Left = 0
    Top = 0
    Width = 566
    Height = 125
    Align = alTop
    Color = 14024661
    TabOrder = 2
    object Label2: TLabel
      Left = 70
      Top = 16
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 75
      Top = 56
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. M'#237'nimo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 76
      Width = 132
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usado nesta opera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 68
      Top = 36
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Reserva:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 111
      Top = 100
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 155
      Top = 100
      Width = 117
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 288
      Top = 0
      Width = 2
      Height = 146
    end
    object lblTotal2: TLabel
      Left = 316
      Top = 100
      Width = 117
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ceEstoque: TCurrencyEdit
      Left = 152
      Top = 8
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 0
    end
    object ceMinimo: TCurrencyEdit
      Left = 152
      Top = 48
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 1
    end
    object ceQtdUsada: TCurrencyEdit
      Left = 152
      Top = 68
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 2
    end
    object ceReserva: TCurrencyEdit
      Left = 152
      Top = 28
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 3
    end
    object ceEstoque2: TCurrencyEdit
      Left = 312
      Top = 8
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 4
    end
    object ceQtdUsada2: TCurrencyEdit
      Left = 312
      Top = 68
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 5
    end
    object ceReserva2: TCurrencyEdit
      Left = 312
      Top = 28
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 4
      DisplayFormat = '0.0000'
      ParentCtl3D = False
      TabOrder = 6
    end
  end
end
