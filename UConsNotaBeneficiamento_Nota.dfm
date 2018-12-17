object frmConsNotaBeneficiamento_Nota: TfrmConsNotaBeneficiamento_Nota
  Left = 316
  Top = 41
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consultar Notas de Beneficiamento'
  ClientHeight = 522
  ClientWidth = 881
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 337
    Align = alTop
    TabOrder = 0
    object SMDBGrid2: TSMDBGrid
      Left = 1
      Top = 55
      Width = 879
      Height = 249
      Align = alClient
      Ctl3D = False
      DataSource = DMConsNotaBeneficiamento.dsNotaDevolvida
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
      ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 20
      ScrollBars = ssHorizontal
      ColCount = 7
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SERIE'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Title.Color = 16767152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 56
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMNOTA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Nota'
          Title.Color = 16767152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DTEMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Emiss'#227'o'
          Title.Color = 16767152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Title.Color = 16767152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Title.Color = 16767152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO_NOTA_NF'
          Title.Caption = 'E/S'
          Title.Color = 16767152
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 34
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 304
      Width = 879
      Height = 32
      Align = alBottom
      Color = 16762508
      TabOrder = 1
      object Label4: TLabel
        Left = 382
        Top = 8
        Width = 58
        Height = 16
        Alignment = taCenter
        Caption = 'Total Qtd:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 442
        Top = 8
        Width = 7
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 879
      Height = 54
      Align = alTop
      Color = 16762508
      TabOrder = 2
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 123
        Height = 16
        Caption = 'N'#186' Nota Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 151
        Top = 7
        Width = 65
        Height = 13
        DataField = 'NUMNOTA'
        DataSource = DMConsNotaBeneficiamento.dsNotaEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 97
        Top = 23
        Width = 50
        Height = 16
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 151
        Top = 22
        Width = 52
        Height = 16
        AutoSize = True
        DataField = 'REFERENCIA'
        DataSource = DMConsNotaBeneficiamento.dsNotaEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 151
        Top = 38
        Width = 52
        Height = 16
        AutoSize = True
        DataField = 'NOMEPRODUTO'
        DataSource = DMConsNotaBeneficiamento.dsNotaEntrada
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 337
    Width = 881
    Height = 185
    Align = alClient
    TabOrder = 1
    object RzGroupBox4: TRzGroupBox
      Left = 1
      Top = 1
      Width = 879
      Height = 183
      Align = alClient
      BorderColor = clNavy
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Baixa Manual '
      Color = clMoneyGreen
      Ctl3D = True
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsGradient
      object SMDBGrid4: TSMDBGrid
        Left = 51
        Top = 18
        Width = 823
        Height = 160
        Align = alClient
        Ctl3D = False
        DataSource = DMConsNotaBeneficiamento.dsBaixa_NFDevolvida
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
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
        ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 16
        ScrollBars = ssHorizontal
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_BAIXA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt Baixa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MOVESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'ID MovEstoque'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 5
        Top = 18
        Width = 46
        Height = 160
        Align = alLeft
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 1
        object RzBitBtn1: TRzBitBtn
          Left = 3
          Top = 20
          Width = 42
          Height = 60
          AlignmentVertical = avBottom
          Caption = 'Excluir Baixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RzBitBtn1Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000040404040404040
            4040404040202020000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040808080BFBFBFDFDFDF9F9F9FBFBFBF707070606060000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF7F7F7FBFBFBF60
            6060DFDFDFA0A0A0404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF404040BFBFBF7F7F7FBFBFBF606060DFDFDFA0A0A0404040000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040909090FFFFFFFFFFFFBF
            BFBFDFDFDF909090808080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000202020404040A0A0A0A0A0A0A0A0A09090904040400000000000000000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000005050506F6F6FBFBFBFBFBFBFBF
            BFBFAFAFAF606060404040000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF0000003F3F3FAFAFAF202020000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
      end
    end
  end
end
