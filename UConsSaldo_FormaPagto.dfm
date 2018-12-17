object frmConsSaldo_FormaPagto: TfrmConsSaldo_FormaPagto
  Left = 245
  Top = 176
  Width = 726
  Height = 400
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Consulta Saldo Por Forma de Pagamento'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 51
    Width = 710
    Height = 311
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object SMDBGrid1: TSMDBGrid
      Left = 1
      Top = 1
      Width = 708
      Height = 309
      Align = alClient
      Ctl3D = False
      DataSource = DMCadFinanceiro.dsSaldo_FPgto
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clSilver
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 16
      ScrollBars = ssHorizontal
      ColCount = 6
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_FORMA_PAGAMENTO'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FORMAPGTO'
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_ENTRADA'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_SAIDA'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_SALDO'
          Width = 112
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 51
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    object Label15: TLabel
      Left = 110
      Top = 11
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label18: TLabel
      Left = 13
      Top = 35
      Width = 120
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Mov.Financeiro Inicial:'
    end
    object Label26: TLabel
      Left = 241
      Top = 35
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object BitBtn1: TBitBtn
      Left = 372
      Top = 23
      Width = 98
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 135
      Top = 5
      Width = 234
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMCadFinanceiro.dsFilial
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 135
      Top = 27
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 269
      Top = 27
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 3
    end
  end
end
