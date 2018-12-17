object frmConsDRE: TfrmConsDRE
  Left = 233
  Top = 142
  Width = 928
  Height = 514
  Caption = 'frmConsDRE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 81
    Width = 912
    Height = 395
    Align = alClient
    Ctl3D = False
    DataSource = DMConsDRE.dsmDREAux
    FixedColor = clWhite
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
    FixedCols = 2
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 30
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Color = 14221232
        Width = 326
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Somar'
        Title.Color = 14221232
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor1'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV1'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor2'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV2'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor3'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV3'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor4'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV4'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor5'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV5'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor6'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV6'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor7'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV7'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor8'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV8'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor9'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV9'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor10'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV10'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor11'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV11'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor12'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV12'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor13'
        Title.Alignment = taCenter
        Title.Color = 14221232
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc_AV13'
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = 14221232
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 1
    Color = clSilver
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 134
      Top = 16
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
      Transparent = True
    end
    object Label6: TLabel
      Left = 316
      Top = 38
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 344
      Top = 58
      Width = 196
      Height = 13
      Caption = '... Aguarde gerado consulta ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object NxComboBox2: TNxComboBox
      Left = 12
      Top = 31
      Width = 149
      Height = 21
      Cursor = crArrow
      Alignment = taRightJustify
      Color = clSilver
      TabOrder = 6
      Text = 'M'#234's/Ano Emiss'#227'o:'
      ReadOnly = True
      HideFocus = False
      Style = dsDropDownList
      AutoCompleteDelay = 0
      ItemIndex = 0
      Items.Strings = (
        'M'#234's/Ano Emiss'#227'o:'
        'M'#234's/Ano  Vencimento:'
        'M'#234's/Ano Baixa:')
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 161
      Top = 10
      Width = 264
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsDRE.dsFilial
      ParentCtl3D = False
      TabOrder = 0
    end
    object btnConsultar: TNxButton
      Left = 162
      Top = 53
      Width = 82
      Caption = 'Consultar'
      Color = clSilver
      ParentColor = False
      TabOrder = 5
      OnClick = btnConsultarClick
    end
    object ceAnoIni: TCurrencyEdit
      Left = 201
      Top = 30
      Width = 41
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 4
      ParentCtl3D = False
      TabOrder = 2
    end
    object ceMesIni: TCurrencyEdit
      Left = 161
      Top = 30
      Width = 41
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 2
      MaxValue = 12.000000000000000000
      ParentCtl3D = False
      TabOrder = 1
    end
    object ceMesFin: TCurrencyEdit
      Left = 344
      Top = 30
      Width = 41
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 2
      MaxValue = 12.000000000000000000
      ParentCtl3D = False
      TabOrder = 3
    end
    object ceAnoFin: TCurrencyEdit
      Left = 384
      Top = 30
      Width = 41
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 4
      ParentCtl3D = False
      TabOrder = 4
    end
    object NxButton1: TNxButton
      Left = 243
      Top = 53
      Width = 82
      Caption = 'Excel'
      Color = clSilver
      ParentColor = False
      TabOrder = 7
      OnClick = NxButton1Click
    end
  end
end
