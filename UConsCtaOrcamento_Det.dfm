object frmConsCtaOrcamento_Det: TfrmConsCtaOrcamento_Det
  Left = 283
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmConsCtaOrcamento_Det'
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
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 489
    ActivePage = TS_Titulos_CCusto
    Align = alClient
    BackgroundColor = clNavy
    FlatColor = clNavy
    ParentBackgroundColor = False
    TabIndex = 3
    TabOrder = 0
    FixedDimension = 19
    object TS_Titulos: TRzTabSheet
      Caption = 'T'#237'tulos'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 466
        Align = alClient
        Ctl3D = True
        DataSource = DMConsFinanceiro.dsDuplicata_det
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid1TitleClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 18
        ScrollBars = ssHorizontal
        ColCount = 11
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMDUPLICATA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Duplicata'
            Width = 139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Vencimento'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Parcela'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pendente'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pago'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'ID Pessoa'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPAGAMENTO_PERIODO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGO_PERIODO'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object TS_Carteira: TRzTabSheet
      Caption = 'Carteira de Pedidos'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 466
        Align = alClient
        Ctl3D = True
        DataSource = DMConsFinanceiro.dsPedido_Pend
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid2TitleClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 18
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cliente'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 340
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pendente'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTREGA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end>
      end
    end
    object TS_OC: TRzTabSheet
      Caption = 'OC Fornecedor'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 466
        Align = alClient
        Ctl3D = True
        DataSource = DMConsFinanceiro.dsPedido_Pend
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid3TitleClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 18
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cliente'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 315
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Refer'#234'ncia'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pendente'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pendente'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENTREGA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end>
      end
    end
    object TS_Titulos_CCusto: TRzTabSheet
      Caption = 'T'#237'tulos (Centro Custo)'
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 908
        Height = 416
        Align = alClient
        Ctl3D = True
        DataSource = DMConsFinanceiro.dsDuplicata_CCusto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 18
        ScrollBars = ssHorizontal
        ColCount = 16
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_ES'
            Title.Alignment = taCenter
            Title.Caption = 'Entrada / Sa'#237'da'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMDUPLICATA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Duplicata'
            Width = 139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Emiss'#227'o'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Vencimento'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Parcela'
            Title.Color = 16777126
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_CCUSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. C. Custo'
            Title.Color = 16777126
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_CCUSTO'
            Title.Alignment = taCenter
            Title.Caption = '% C.Custo'
            Title.Color = 16777126
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pendente'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pago'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'ID Pessoa'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 321
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTULTPAGAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CCUSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Centro Custo'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 416
        Width = 908
        Height = 50
        Align = alBottom
        Color = 8454143
        TabOrder = 1
        object Label1: TLabel
          Left = 13
          Top = 10
          Width = 95
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Entrada (T'#237'tulo):'
        end
        object Label2: TLabel
          Left = 24
          Top = 32
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Saida (T'#237'tulo):'
        end
        object Label3: TLabel
          Left = 423
          Top = 10
          Width = 104
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Entrada (C.Custo):'
        end
        object Label4: TLabel
          Left = 434
          Top = 29
          Width = 94
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr. Saida (C.Custo):'
        end
        object DBEdit1: TDBEdit
          Left = 111
          Top = 3
          Width = 121
          Height = 21
          DataField = 'agVlr_Entrada_Dup'
          DataSource = DMConsFinanceiro.dsDuplicata_CCusto
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 111
          Top = 26
          Width = 121
          Height = 21
          DataField = 'agVlr_Saida_Dup'
          DataSource = DMConsFinanceiro.dsDuplicata_CCusto
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 530
          Top = 3
          Width = 121
          Height = 21
          DataField = 'agVlr_Entrada'
          DataSource = DMConsFinanceiro.dsDuplicata_CCusto
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 530
          Top = 21
          Width = 121
          Height = 21
          DataField = 'agVlr_Saida'
          DataSource = DMConsFinanceiro.dsDuplicata_CCusto
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
end
