object fCupomCliente: TfCupomCliente
  Left = 320
  Top = 99
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'fCupomCliente'
  ClientHeight = 430
  ClientWidth = 554
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
  object Label1: TLabel
    Left = 70
    Top = 44
    Width = 65
    Height = 18
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 98
    Top = 72
    Width = 37
    Height = 18
    Alignment = taRightJustify
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 54
    Top = 100
    Width = 81
    Height = 18
    Alignment = taRightJustify
    Caption = 'Endere'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 33
    Top = 215
    Width = 102
    Height = 18
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label78: TLabel
    Left = 51
    Top = 330
    Width = 153
    Height = 18
    Alignment = taRightJustify
    Caption = 'Tipo Atendimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 75
    Top = 353
    Width = 129
    Height = 18
    Alignment = taRightJustify
    Caption = 'Transportadora:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 89
    Top = 16
    Width = 46
    Height = 18
    Alignment = taRightJustify
    Caption = 'Fone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object DBMemo3: TDBMemo
    Left = 0
    Top = 276
    Width = 554
    Height = 113
    Align = alBottom
    DataField = 'CLIENTE_ENDERECO'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Vwe'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 36
    Width = 554
    Height = 240
    Align = alBottom
    DataSource = dsClientes
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ColCount = 2
    RowCount = 2
  end
  object DBEdit1: TDBEdit
    Left = 142
    Top = 36
    Width = 343
    Height = 26
    CharCase = ecUpperCase
    DataField = 'CLIENTE_NOME'
    DataSource = dmCupomFiscal.dsCupomFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = DBEdit1KeyDown
  end
  object DBEdit2: TDBEdit
    Left = 142
    Top = 64
    Width = 177
    Height = 26
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = dmCupomFiscal.dsCupomFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 142
    Top = 92
    Width = 369
    Height = 113
    DataField = 'CLIENTE_ENDERECO'
    DataSource = dmCupomFiscal.dsCupomFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Vwe'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 389
    Width = 554
    Height = 41
    Align = alBottom
    Color = 8404992
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 8
    object btConfirmar: TNxButton
      Left = 94
      Top = 5
      Width = 187
      Height = 30
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btConfirmarClick
    end
    object brCancelar: TNxButton
      Left = 281
      Top = 5
      Width = 187
      Height = 30
      Caption = 'Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Transparent = True
      OnClick = brCancelarClick
    end
  end
  object DBMemo2: TDBMemo
    Left = 142
    Top = 207
    Width = 369
    Height = 113
    DataField = 'CLIENTE_OBS'
    DataSource = dmCupomFiscal.dsCupomFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Vwe'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 208
    Top = 322
    Width = 303
    Height = 26
    Style = csDropDownList
    DataField = 'TIPO_ATENDIMENTO'
    DataSource = dmCupomFiscal.dsCupomFiscal
    EnableValues = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 18
    Items.Strings = (
      'Opera'#231#227'o presencial'
      'NFC-e em opera'#231#227'o com entrega em domic'#237'lio')
    ParentFont = False
    TabOrder = 6
    Values.Strings = (
      '1'
      '4')
    OnExit = RxDBComboBox2Exit
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 208
    Top = 349
    Width = 303
    Height = 21
    DropDownCount = 8
    DataField = 'ID_TRANSPORTADORA'
    DataSource = dmCupomFiscal.dsCupomFiscal
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = dmCupomFiscal.dsTransp
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 486
    Top = 36
    Width = 25
    Height = 25
    Hint = 'Procura cadastro'
    Caption = 'F6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DBEdit3: TDBEdit
    Left = 142
    Top = 8
    Width = 177
    Height = 26
    CharCase = ecUpperCase
    DataField = 'CLIENTE_FONE'
    DataSource = dmCupomFiscal.dsCupomFiscal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = DBEdit3KeyDown
  end
  object sdsClientes: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT CLIENTE_NOME, CLIENTE_FONE, CLIENTE_ENDERECO'#13#10'FR' +
      'OM CUPOMFISCAL'#13#10'WHERE CLIENTE_FONE = :F1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'F1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 8
  end
  object dspClientes: TDataSetProvider
    DataSet = sdsClientes
    Left = 368
    Top = 8
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 400
    Top = 8
    object cdsClientesCLIENTE_NOME: TStringField
      FieldName = 'CLIENTE_NOME'
      Size = 30
    end
    object cdsClientesCLIENTE_FONE: TStringField
      FieldName = 'CLIENTE_FONE'
    end
    object cdsClientesCLIENTE_ENDERECO: TStringField
      FieldName = 'CLIENTE_ENDERECO'
      Size = 120
    end
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 432
    Top = 8
  end
end
