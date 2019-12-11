object frmSel_CBenef: TfrmSel_CBenef
  Left = 183
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmSel_CBenef'
  ClientHeight = 449
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 34
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 15
      Width = 65
      Height = 14
      Alignment = taRightJustify
      Caption = 'CST ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object btnConsultar: TNxButton
      Left = 156
      Top = 4
      Width = 124
      Height = 28
      Caption = 'Efetuar pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnConsultarClick
    end
    object edtCST: TEdit
      Left = 86
      Top = 9
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 2
      TabOrder = 0
      OnKeyDown = edtCSTKeyDown
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 34
    Width = 981
    Height = 415
    Align = alClient
    Ctl3D = False
    DataSource = dsCBenef
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    GridStyle.Style = gsSoftYellowGreen
    GridStyle.OddColor = 15138815
    GridStyle.EvenColor = 14477784
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 17
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = 16777128
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_00'
        Title.Alignment = taCenter
        Title.Caption = 'CST 00'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_10'
        Title.Alignment = taCenter
        Title.Caption = 'CST 10'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_20'
        Title.Alignment = taCenter
        Title.Caption = 'CST 20'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_30'
        Title.Alignment = taCenter
        Title.Caption = 'CST 30'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_40'
        Title.Alignment = taCenter
        Title.Caption = 'CST 40'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_41'
        Title.Alignment = taCenter
        Title.Caption = 'CST 41'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_50'
        Title.Alignment = taCenter
        Title.Caption = 'CST 50'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_51'
        Title.Alignment = taCenter
        Title.Caption = 'CST 51'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_60'
        Title.Alignment = taCenter
        Title.Caption = 'CST 60'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_70'
        Title.Alignment = taCenter
        Title.Caption = 'CST 70'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST_90'
        Title.Alignment = taCenter
        Title.Caption = 'CST 90'
        Title.Color = 16777128
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTINICIO'
        Title.Alignment = taCenter
        Title.Caption = 'DT. In'#237'cio'
        Title.Color = 16777128
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Final'
        Title.Color = 16777128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = 16777128
        Width = 606
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Title.Alignment = taCenter
        Title.Caption = 'Obs'
        Title.Color = 16777128
        Width = 382
        Visible = True
      end>
  end
  object sdsCBenef: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM cbenef'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 227
    Top = 156
  end
  object dspCBenef: TDataSetProvider
    DataSet = sdsCBenef
    Left = 262
    Top = 156
  end
  object cdsCBenef: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCBenef'
    Left = 309
    Top = 156
    object cdsCBenefID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCBenefCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object cdsCBenefUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCBenefDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 250
    end
    object cdsCBenefOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsCBenefDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsCBenefDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsCBenefCST_00: TStringField
      FieldName = 'CST_00'
      Size = 1
    end
    object cdsCBenefCST_10: TStringField
      FieldName = 'CST_10'
      Size = 1
    end
    object cdsCBenefCST_20: TStringField
      FieldName = 'CST_20'
      Size = 1
    end
    object cdsCBenefCST_30: TStringField
      FieldName = 'CST_30'
      Size = 1
    end
    object cdsCBenefCST_40: TStringField
      FieldName = 'CST_40'
      Size = 1
    end
    object cdsCBenefCST_41: TStringField
      FieldName = 'CST_41'
      Size = 1
    end
    object cdsCBenefCST_50: TStringField
      FieldName = 'CST_50'
      Size = 1
    end
    object cdsCBenefCST_51: TStringField
      FieldName = 'CST_51'
      Size = 1
    end
    object cdsCBenefCST_60: TStringField
      FieldName = 'CST_60'
      Size = 1
    end
    object cdsCBenefCST_70: TStringField
      FieldName = 'CST_70'
      Size = 1
    end
    object cdsCBenefCST_90: TStringField
      FieldName = 'CST_90'
      Size = 1
    end
  end
  object dsCBenef: TDataSource
    DataSet = cdsCBenef
    Left = 340
    Top = 156
  end
end
