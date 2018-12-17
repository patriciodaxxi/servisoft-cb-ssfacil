object frmCadPercSimples_Fat: TfrmCadPercSimples_Fat
  Left = 342
  Top = 154
  Width = 671
  Height = 487
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Faturamento'
  Color = clMoneyGreen
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
  object Label1: TLabel
    Left = 40
    Top = 6
    Width = 50
    Height = 13
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 6
    Width = 50
    Height = 13
    Caption = 'Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 13
    Top = 84
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. Faturamento:'
  end
  object Label5: TLabel
    Left = 20
    Top = 104
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'Vlr. Devolu'#231#227'o:'
  end
  object Label4: TLabel
    Left = 66
    Top = 124
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total:'
  end
  object Label6: TLabel
    Left = 263
    Top = 120
    Width = 14
    Height = 16
    Alignment = taRightJustify
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 70
    Top = 32
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Filial:'
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Consultar'
    DragCursor = crHandPoint
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 96
    Top = 76
    Width = 121
    Height = 21
    AutoSize = False
    Ctl3D = False
    DisplayFormat = '0.00'
    ParentCtl3D = False
    TabOrder = 3
    OnKeyDown = CurrencyEdit1KeyDown
  end
  object CurrencyEdit2: TCurrencyEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 21
    AutoSize = False
    Ctl3D = False
    DisplayFormat = '0.00'
    ParentCtl3D = False
    TabOrder = 4
    OnKeyDown = CurrencyEdit2KeyDown
  end
  object CurrencyEdit3: TCurrencyEdit
    Left = 96
    Top = 116
    Width = 121
    Height = 21
    AutoSize = False
    Ctl3D = False
    DisplayFormat = '0.00'
    ParentCtl3D = False
    TabOrder = 5
  end
  object BitBtn2: TBitBtn
    Left = 170
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Mostrar %'
    DragCursor = crHandPoint
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 150
    Width = 655
    Height = 299
    Align = alBottom
    Ctl3D = False
    DataSource = DMCadPercSimples.dsFaixa_Simples
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
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
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'VLR_DE'
        Title.Alignment = taCenter
        Title.Caption = 'De'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ATE'
        Title.Alignment = taCenter
        Title.Caption = 'At'#233
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_ICMS'
        Title.Alignment = taCenter
        Title.Caption = '% Icms'
        Width = 84
        Visible = True
      end>
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 96
    Top = 24
    Width = 433
    Height = 21
    DropDownCount = 8
    Ctl3D = False
    LookupField = 'ID'
    LookupDisplay = 'NOME_INTERNO'
    LookupSource = DMCadPercSimples.dsFilial
    ParentCtl3D = False
    TabOrder = 0
  end
end
