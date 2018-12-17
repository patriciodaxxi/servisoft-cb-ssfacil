object frmCob_Remessa: TfrmCob_Remessa
  Left = 232
  Top = 69
  Width = 838
  Height = 607
  Caption = 'Remessa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 52
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label5: TLabel
      Left = 478
      Top = 14
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Inicial:'
    end
    object Label7: TLabel
      Left = 673
      Top = 14
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label12: TLabel
      Left = 29
      Top = 34
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label6: TLabel
      Left = 410
      Top = 34
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object Label14: TLabel
      Left = 17
      Top = 14
      Width = 36
      Height = 13
      Caption = 'T'#237'tulos:'
    end
    object DateEdit1: TDateEdit
      Left = 567
      Top = 6
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 701
      Top = 6
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 3
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 55
      Top = 28
      Width = 274
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMCob_Eletronica.dsFilial
      TabOrder = 4
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 447
      Top = 28
      Width = 354
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCob_Eletronica.dsContas
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 56
      Top = 6
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'N'#227'o Enviados'
      Items.Strings = (
        'N'#227'o Enviados'
        'Enviados'
        'Ambos')
    end
    object CheckBox1: TCheckBox
      Left = 217
      Top = 8
      Width = 224
      Height = 17
      Caption = 'Somente t'#237'tulo que o boleto j'#225' foi impresso'
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 52
    Width = 822
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 220
      Top = 7
      Width = 181
      Height = 30
      Caption = 'Gerar Remessa dos Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 4
      Top = 7
      Width = 181
      Height = 30
      Caption = 'Consultar T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConsultarClick
    end
    object CheckBox2: TCheckBox
      Left = 704
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Teste'
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 444
      Top = 7
      Width = 181
      Height = 30
      Caption = 'Imprimir Remessa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 130
    Width = 822
    Height = 439
    Align = alClient
    Ctl3D = False
    DataSource = DMCob_Eletronica.dsDuplicata
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMDUPLICATA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' T'#237'tulo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nosso N'#250'mero'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr Parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Caption = 'Nome Cliente'
        Width = 296
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_REMESSA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Remessa'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 93
    Width = 822
    Height = 37
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 24
      Top = 5
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo Gerado:'
    end
    object Label2: TLabel
      Left = 106
      Top = 5
      Width = 77
      Height = 13
      Caption = 'Arquivo Gerado:'
    end
    object Label3: TLabel
      Left = 56
      Top = 20
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Total:'
    end
    object Label4: TLabel
      Left = 106
      Top = 20
      Width = 77
      Height = 13
      Caption = 'Arquivo Gerado:'
    end
    object Label8: TLabel
      Left = 266
      Top = 21
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. T'#237'tulos:'
    end
    object Label9: TLabel
      Left = 330
      Top = 21
      Width = 77
      Height = 13
      Caption = 'Arquivo Gerado:'
    end
  end
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRetorno
    Left = 760
    Top = 56
  end
end
