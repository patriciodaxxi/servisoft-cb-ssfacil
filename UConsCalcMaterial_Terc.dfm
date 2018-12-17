object frmConsCalcMaterial_Terc: TfrmConsCalcMaterial_Terc
  Left = 180
  Top = 79
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'C'#225'lculo de materiais de terceiros'
  ClientHeight = 565
  ClientWidth = 928
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
  object Panel2: TPanel
    Left = 0
    Top = 114
    Width = 928
    Height = 31
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 928
    Height = 114
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 490
      Top = 11
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido (OC):'
    end
    object Label2: TLabel
      Left = 79
      Top = 11
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 67
      Top = 33
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label4: TLabel
      Left = 5
      Top = 55
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Refer'#234'ncia/Produto:'
    end
    object Label5: TLabel
      Left = 32
      Top = 75
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Ini:'
    end
    object Label6: TLabel
      Left = 205
      Top = 75
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 34
      Top = 97
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entrega Ini:'
    end
    object Label8: TLabel
      Left = 205
      Top = 97
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Edit1: TEdit
      Left = 551
      Top = 3
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyDown = Edit1KeyDown
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 103
      Top = 3
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsFilial
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 103
      Top = 25
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 223
      Top = 47
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMConsPedido.dsProduto
      TabOrder = 3
      OnChange = RxDBLookupCombo3Change
      OnEnter = RxDBLookupCombo3Enter
      OnKeyDown = RxDBLookupCombo3KeyDown
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 103
      Top = 47
      Width = 121
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'REFERENCIA'
      LookupSource = DMConsPedido.dsProduto
      TabOrder = 4
      OnChange = RxDBLookupCombo4Change
      OnEnter = RxDBLookupCombo4Enter
      OnKeyDown = RxDBLookupCombo4KeyDown
    end
    object DateEdit1: TDateEdit
      Left = 103
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 5
    end
    object DateEdit2: TDateEdit
      Left = 231
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 6
    end
    object DateEdit3: TDateEdit
      Left = 103
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 7
    end
    object DateEdit4: TDateEdit
      Left = 231
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 8
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 145
    Width = 928
    Height = 420
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Material Por Produto'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 20
        Width = 924
        Height = 377
        Align = alClient
        DataSource = DMConsPedido.dsPedido_Mat
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid1TitleClick
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 10
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 243
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAMANHO'
            Title.Alignment = taCenter
            Title.Caption = 'Tamanho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MATERIAL'
            Title.Alignment = taCenter
            Title.Caption = 'ID Material'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEMATERIAL'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Material'
            Width = 338
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clConsumo'
            Title.Alignment = taCenter
            Title.Caption = 'Consumo Total'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 313
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cliente'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 20
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Shape2: TShape
          Left = 584
          Top = 3
          Width = 25
          Height = 15
          Brush.Color = clRed
        end
        object Label10: TLabel
          Left = 614
          Top = 5
          Width = 121
          Height = 13
          Caption = 'Consumo n'#227'o cadastrado'
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Materiais'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 30
        Width = 924
        Height = 367
        Align = alClient
        DataSource = DMConsPedido.dsmConsumo
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid2TitleClick
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid2GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome_Cliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 228
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_Material'
            Title.Alignment = taCenter
            Title.Caption = 'ID Material'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMaterial'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Material'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produto Produ'#231#227'o'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_MaterialTerc'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Material Estoque'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd_ConsumoCalc'
            Title.Alignment = taCenter
            Title.Caption = 'Consumo Calculado'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_Cliente'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cliente'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 924
        Height = 30
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Shape1: TShape
          Left = 584
          Top = 14
          Width = 25
          Height = 15
          Brush.Color = clRed
        end
        object Label9: TLabel
          Left = 614
          Top = 16
          Width = 80
          Height = 13
          Caption = 'Material em Falta'
        end
        object BitBtn2: TBitBtn
          Left = 4
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Produto (consumo n'#227'o cadastrado)'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 924
        Height = 397
        Align = alClient
        DataSource = DMConsPedido.dsmProdutoSC
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid3TitleClick
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 3
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_Produto'
            Title.Alignment = taCenter
            Title.Caption = 'ID Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Visible = True
          end>
      end
    end
  end
end
