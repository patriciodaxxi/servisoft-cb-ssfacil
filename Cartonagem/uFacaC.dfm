object fFacaC: TfFacaC
  Left = 164
  Top = 4
  Width = 956
  Height = 700
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fFacaC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 33
    Align = alTop
    TabOrder = 0
    object BitBtn4: TBitBtn
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 79
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object CheckBox1: TCheckBox
      Left = 336
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Produ'#231#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckBox2: TCheckBox
      Left = 432
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Or'#231'amento'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object CheckBox3: TCheckBox
      Left = 528
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Inativas'
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 154
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Consultar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 229
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 6
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 33
    Width = 940
    Height = 475
    Align = alClient
    DataSource = dmFaca.dsFacaCons
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid2GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 29
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clCaixaTipo'
        Title.Caption = 'TIPO'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clFDTipoMat'
        Title.Caption = 'MATERIAL FUNDO'
        Title.Color = 13743257
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FD_COPIAS_C'
        Title.Caption = 'COP C'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FD_COPIAS_L'
        Title.Caption = 'COP L'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FD_COMPR'
        Title.Caption = 'COM'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FD_LARGURA'
        Title.Caption = 'LAR'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FD_ALTURA'
        Title.Caption = 'ALT'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FD_ABA_INT_CAB'
        Title.Caption = 'AIC'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FD_ABA_INT_LAT'
        Title.Caption = 'AIL'
        Title.Color = 13743257
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAMENTO_FD'
        Title.Caption = 'FECH.'
        Title.Color = 13743257
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAMENTO_CT'
        Title.Caption = 'FECH. CART.'
        Title.Color = 13743257
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clTPTipoMat'
        Title.Caption = 'MATERIAL TAMPA'
        Title.Color = clMoneyGreen
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TP_COPIAS_C'
        Title.Caption = 'COP C'
        Title.Color = clMoneyGreen
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TP_COPIAS_L'
        Title.Caption = 'COP L'
        Title.Color = clMoneyGreen
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_ABA_EXT_CAB'
        Title.Caption = 'AEC'
        Title.Color = clMoneyGreen
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_ABA_INT_CAB'
        Title.Caption = 'AIC'
        Title.Color = clMoneyGreen
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_ABA_EXT_LAT'
        Title.Caption = 'AEL'
        Title.Color = clMoneyGreen
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_ABA_INT_LAT'
        Title.Caption = 'AIL'
        Title.Color = clMoneyGreen
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAMENTO_TP'
        Title.Caption = 'FECH.'
        Title.Color = clMoneyGreen
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clSPTipoMat'
        Title.Caption = 'MATERIAL SUPORTE'
        Title.Color = 8963327
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SP_COPIAS_C'
        Title.Caption = 'COP C'
        Title.Color = 8963327
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SP_COPIAS_L'
        Title.Caption = 'COP L'
        Title.Color = 8963327
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SP_COMPR'
        Title.Caption = 'COM'
        Title.Color = 8963327
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SP_LARGURA'
        Title.Caption = 'LAR'
        Title.Color = 8963327
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SP_ALTURA'
        Title.Caption = 'ALT'
        Title.Color = 8963327
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAMENTO_SP'
        Title.Caption = 'FECH.'
        Title.Color = 8963327
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Width = 42
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 508
    Width = 940
    Height = 29
    Align = alBottom
    TabOrder = 2
    object Label39: TLabel
      Left = 39
      Top = 12
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o fundo:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label1: TLabel
      Left = 253
      Top = 12
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o tampa:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label6: TLabel
      Left = 472
      Top = 12
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o suporte:'
      Color = clBtnFace
      ParentColor = False
    end
    object DBEdit3: TDBEdit
      Left = 120
      Top = 4
      Width = 105
      Height = 21
      TabStop = False
      Color = 13743257
      DataField = 'ENDERECO_FD'
      DataSource = dmFaca.dsFacaCons
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 336
      Top = 4
      Width = 105
      Height = 21
      TabStop = False
      Color = clMoneyGreen
      DataField = 'ENDERECO_TP'
      DataSource = dmFaca.dsFacaCons
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 560
      Top = 4
      Width = 105
      Height = 21
      TabStop = False
      Color = 8963327
      DataField = 'ENDERECO_SP'
      DataSource = dmFaca.dsFacaCons
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 537
    Width = 940
    Height = 125
    Align = alBottom
    Color = clWindow
    TabOrder = 3
    object Label5: TLabel
      Left = 8
      Top = 3
      Width = 45
      Height = 13
      Caption = 'Legenda:'
    end
    object Label7: TLabel
      Left = 64
      Top = 3
      Width = 276
      Height = 117
      Caption = 
        '4P - 4 PONTOS'#13#10'6P - 6 PONTOS'#13#10'8P - 8 PONTOS'#13#10'AA - AUTO ADESIVO N' +
        'ORMAL'#13#10'AAA - AUTO ADESIVO COM ABAS LATERAIS COLADAS'#13#10'DIS - DISPL' +
        'AY'#13#10'ENV - ENVOLT'#211'RIO'#13#10'FA - FUNDO AUTOM'#193'TICO'#13#10'FAM - FUNDO AMERICA' +
        'NO'
    end
    object Label2: TLabel
      Left = 769
      Top = 6
      Width = 162
      Height = 13
      Caption = 'FUNDO / CARTUCHO / SACOLA'
    end
    object Shape1: TShape
      Left = 752
      Top = 4
      Width = 15
      Height = 15
      Brush.Color = 13743257
    end
    object Shape2: TShape
      Left = 752
      Top = 20
      Width = 15
      Height = 15
      Brush.Color = clMoneyGreen
    end
    object Label3: TLabel
      Left = 769
      Top = 22
      Width = 37
      Height = 13
      Caption = 'TAMPA'
    end
    object Shape3: TShape
      Left = 752
      Top = 36
      Width = 15
      Height = 15
      Brush.Color = 8963327
    end
    object Label4: TLabel
      Left = 769
      Top = 38
      Width = 52
      Height = 13
      Caption = 'SUPORTE'
    end
    object Shape4: TShape
      Left = 752
      Top = 52
      Width = 15
      Height = 15
      Brush.Color = 8454143
    end
    object Label8: TLabel
      Left = 769
      Top = 54
      Width = 69
      Height = 13
      Caption = 'OR'#199'AMENTO'
    end
    object Label9: TLabel
      Left = 384
      Top = 3
      Width = 265
      Height = 117
      Caption = 
        'FAMT - FUNDO AMERICANO COM TRAVA'#13#10'FAT - FUNDO AUTOM'#193'TICO COM TRA' +
        'VA'#13#10'FN - FUNDO NORMAL'#13#10'FNT - FUNDO NORMAL COM TRAVA'#13#10'ME - MONTAG' +
        'EM POR ENCAIXE (com cola)'#13#10'MET - MONTAGEM POR ENCAIXE TRAVA (com' +
        ' cola)'#13#10'MM - MONTAGEM MANUAL (sem cola)'#13#10'MMT - MONTAGEM MANUAL C' +
        'OM TRAVA (sem cola) '#13#10'SAC - SACOLA'
    end
  end
end
