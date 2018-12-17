object frmConsManifesto: TfrmConsManifesto
  Left = 192
  Top = 116
  Width = 967
  Height = 584
  Caption = 'Consulta Manifesto dos Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 83
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 49
      Width = 86
      Height = 13
      Caption = 'Dt.Emiss'#227'o Inicial:'
    end
    object Label2: TLabel
      Left = 67
      Top = 10
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 202
      Top = 49
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label4: TLabel
      Left = 55
      Top = 30
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 7
      Top = 70
      Width = 82
      Height = 13
      Caption = 'NF-e Consultada:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 92
      Top = 2
      Width = 425
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsManifesto.dsFilial
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 92
      Top = 42
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 230
      Top = 42
      Width = 100
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 519
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 92
      Top = 22
      Width = 425
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsManifesto.dsCliente
      ParentCtl3D = False
      TabOrder = 1
    end
    object cbIndNFe: TComboBox
      Left = 92
      Top = 62
      Width = 425
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 
        '1-Notas sem manifesta'#231#227'o, incluindo as que tiveram somente Ci'#234'nc' +
        'ia da Opera'#231#227'o'
      Items.Strings = (
        '0-Notas que n'#227'o tiveram manifesta'#231#227'o'
        
          '1-Notas sem manifesta'#231#227'o, incluindo as que tiveram somente Ci'#234'nc' +
          'ia da Opera'#231#227'o'
        '2-Notas com manifesta'#231#227'o (Confirmada Opera'#231#227'o)'
        '3-Notas com manifesta'#231#227'o (Desconhecimento da Opera'#231#227'o)'
        '4-Notas com manifesta'#231#227'o (Opera'#231#227'o N'#227'o Realizada)'
        '5-Notas com manifesta'#231#227'o (Ci'#234'ncia da Opera'#231#227'o)'
        '6-Todas as NF-e'
        ''
        '')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 83
    Width = 951
    Height = 463
    Align = alClient
    DataSource = DMConsManifesto.dsConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
        Expanded = False
        FieldName = 'SERIE'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMNOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_NOTA'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DUPLICATA'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_TIPO'
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVENTO'
        Visible = True
      end>
  end
end
