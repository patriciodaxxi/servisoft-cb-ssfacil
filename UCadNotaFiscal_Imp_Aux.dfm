object frmCadNotaFiscal_Imp_Aux: TfrmCadNotaFiscal_Imp_Aux
  Left = 160
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados da Importa'#231#227'o (Adi'#231#227'o)'
  ClientHeight = 401
  ClientWidth = 998
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
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 367
    Width = 998
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 0
    object BitBtn4: TBitBtn
      Left = 553
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object BitBtn1: TBitBtn
      Left = 355
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F7) &Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 454
      Top = 5
      Width = 98
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 112
    Width = 998
    Height = 255
    Align = alClient
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Imp_Aux
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
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
    FixedCols = 1
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 19
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_DI'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' DI'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTREGISTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Registro'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTDESEMBARACO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Desembara'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_EXPORTADOR'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Exportador'
        Width = 278
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAL_DESEMBARACO'
        Title.Alignment = taCenter
        Title.Caption = 'Local Desembara'#231'o'
        Width = 252
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF'
        Title.Alignment = taCenter
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_FATURA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Fatura'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_ADICAO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Adi'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_SEQ'
        Title.Alignment = taCenter
        Title.Caption = 'Sequencia Adi'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_FABRICANTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo Fabricante'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_DESCONTO_DI'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Desconto DI'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_VIA_TRANSPORTE'
        Title.Alignment = taCenter
        Title.Caption = 'Via Transporte'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_AFRMM'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. AFRMM'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TIPO_INTERMEDIO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Importa'#231#227'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF_TERCEIRO'
        Title.Alignment = taCenter
        Title.Caption = 'UF Terceiro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CNPJ_TERCEIRO'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ Terceiro'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_DRAWBACK'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Drawback'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 112
    Align = alTop
    Color = clSilver
    TabOrder = 2
    object Shape2: TShape
      Left = 290
      Top = 3
      Width = 119
      Height = 104
      Brush.Color = clSilver
    end
    object Shape1: TShape
      Left = 16
      Top = 3
      Width = 266
      Height = 105
      Brush.Color = clSilver
    end
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 247
      Height = 78
      Caption = 
        '1= Maritima             2= Fluvial'#13#10'3= Lacustre            4= Ae' +
        'rea'#13#10'5= Postal                6= Ferroviaria'#13#10'7= Rodoviaria     ' +
        '    8= Conduto / Rede Transmissao'#13#10'9= Meios Proprios  10= Entrad' +
        'a / Saida Ficta'#13#10'11= Courier            12= Handcarry'
    end
    object Label2: TLabel
      Left = 24
      Top = 5
      Width = 88
      Height = 13
      Caption = 'Via Transporte:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 298
      Top = 22
      Width = 102
      Height = 39
      Caption = '1= Por conta pr'#243'pria'#13#10'2= Por conta e ordem'#13#10'3= Por encomenda'
    end
    object Label4: TLabel
      Left = 298
      Top = 5
      Width = 93
      Height = 13
      Caption = 'Tipo Importa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
