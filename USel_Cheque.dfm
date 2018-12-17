object frmSel_Cheque: TfrmSel_Cheque
  Left = 256
  Top = 58
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Cheques'
  ClientHeight = 489
  ClientWidth = 912
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 57
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Shape2: TShape
      Left = 760
      Top = 26
      Width = 28
      Height = 15
      Brush.Color = 7995257
    end
    object Label2: TLabel
      Left = 790
      Top = 28
      Width = 97
      Height = 13
      Caption = 'Cheque selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 568
      Top = 11
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. T'#237'tulo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 566
      Top = 28
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Diferen'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 24
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Filial:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 628
      Top = 6
      Width = 121
      Height = 18
      TabStop = False
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 628
      Top = 23
      Width = 121
      Height = 18
      TabStop = False
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 49
      Top = 8
      Width = 328
      Height = 21
      DropDownCount = 8
      Ctl3D = False
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadDuplicata.dsFilial
      ParentCtl3D = False
      TabOrder = 2
    end
    object btnConsultar: TNxButton
      Left = 48
      Top = 32
      Width = 169
      Caption = 'Pesquisar Pendentes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnConsultarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 57
    Width = 912
    Height = 294
    Align = alClient
    Ctl3D = False
    DataSource = DMCadDuplicata.dsChequePend
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 11
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESC_EMITENTE'
        Title.Caption = 'Emitido Por'
        Title.Color = 16764573
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUM_CHEQUE'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Cheque'
        Title.Color = 16764573
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTBOM_PARA'
        Title.Alignment = taCenter
        Title.Caption = 'Bom Para'
        Title.Color = 16764573
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Color = 16764573
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Titular'
        Title.Color = 16764573
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE_CONTATO'
        Title.Alignment = taCenter
        Title.Caption = 'Fone Contato'
        Title.Color = 16764573
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Ag.'
        Title.Color = 16764573
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CONTA'
        Title.Alignment = taCenter
        Title.Caption = 'Conta'
        Title.Color = 16764573
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Title.Color = 16764573
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Color = 16764573
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 471
    Width = 912
    Height = 18
    Align = alBottom
    Caption = 'Duplo Clique para Selecionar e Desselecionar o Cheque'
    Color = 14408667
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object gbxVendedor: TRzGroupBox
    Left = 0
    Top = 351
    Width = 912
    Height = 120
    Align = alBottom
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Cheques Selecionados '
    Ctl3D = True
    FlatColor = clNavy
    FlatColorAdjustment = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 18
      Width = 801
      Height = 97
      Align = alClient
      Ctl3D = False
      DataSource = DMCadDuplicata.dsmCheque
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      OnGetCellParams = SMDBGrid1GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 16
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Num_Cheque'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Cheque'
          Title.Color = 12976010
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Vlr_Cheque'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Cheque'
          Title.Color = 12976010
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DtBomPara'
          Title.Alignment = taCenter
          Title.Caption = 'Bom Para'
          Title.Color = 12976010
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkNomeBanco'
          Title.Alignment = taCenter
          Title.Caption = 'Banco'
          Title.Color = 12976010
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titular'
          Title.Alignment = taCenter
          Title.Caption = 'T'#237'tular'
          Title.Color = 12976010
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fone_Titular'
          Title.Alignment = taCenter
          Title.Caption = 'Fone Contato'
          Title.Color = 12976010
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Recebido'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Color = 12976010
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 806
      Top = 18
      Width = 101
      Height = 97
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Label3: TLabel
        Left = 37
        Top = 12
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 3
        Top = 31
        Width = 95
        Height = 18
        TabStop = False
        AutoSize = False
        Ctl3D = False
        DisplayFormat = '0.00'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object btnConfirmar: TNxButton
        Left = 4
        Top = 62
        Width = 93
        Height = 30
        Cursor = crHandPoint
        Hint = 'Copiar os cheques selecionados'
        Caption = 'Copiar Sel.'
        Down = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        GlyphSpacing = 5
        ParentFont = False
        TabOrder = 1
        Transparent = True
        OnClick = btnConfirmarClick
      end
    end
  end
end
