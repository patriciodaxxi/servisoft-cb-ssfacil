object fCartoOrcamentoItem: TfCartoOrcamentoItem
  Left = 211
  Top = 135
  Width = 923
  Height = 563
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCartoOrcamentoItem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 30
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 74
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object CheckBox1: TCheckBox
      Left = 280
      Top = 8
      Width = 129
      Height = 17
      Caption = 'Liberar gramatura'
      TabOrder = 2
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 30
    Width = 907
    Height = 234
    Align = alClient
    DataSource = dmCartoOrcamento.dsMaterial
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
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
        FieldName = 'NOME'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REF'#202'RENCIA'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PR.CUSTO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PR.C'#193'LCULO'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPRIMENTO'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LARGURA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAMATURA'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 264
    Width = 907
    Height = 261
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 64
      Top = 112
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quebra:'
    end
    object Label2: TLabel
      Left = 44
      Top = 64
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Corte Inicial:'
    end
    object Label3: TLabel
      Left = 192
      Top = 64
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label4: TLabel
      Left = 49
      Top = 88
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = 'Corte Final:'
    end
    object Label5: TLabel
      Left = 192
      Top = 88
      Width = 7
      Height = 13
      Caption = 'X'
    end
    object Label6: TLabel
      Left = 44
      Top = 136
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object Label7: TLabel
      Left = 45
      Top = 160
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vrl. Unit'#225'rio:'
    end
    object Label8: TLabel
      Left = 57
      Top = 184
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Total:'
    end
    object Label9: TLabel
      Left = 118
      Top = 40
      Width = 61
      Height = 13
      Alignment = taCenter
      Caption = 'Comprimento'
    end
    object Label10: TLabel
      Left = 226
      Top = 40
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = 'Largura'
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 104
      Width = 73
      Height = 21
      DataField = 'QUEBRA'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 56
      Width = 73
      Height = 21
      DataField = 'CI1'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 208
      Top = 56
      Width = 73
      Height = 21
      DataField = 'CI2'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 112
      Top = 80
      Width = 73
      Height = 21
      DataField = 'CF1'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 208
      Top = 80
      Width = 73
      Height = 21
      DataField = 'CF2'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 112
      Top = 128
      Width = 73
      Height = 21
      DataField = 'QTD'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 112
      Top = 152
      Width = 73
      Height = 21
      DataField = 'VLR_UNIT'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 112
      Top = 176
      Width = 73
      Height = 21
      DataField = 'VLR_TOTAL'
      DataSource = dmCartoOrcamento.dsCartoOrcamentoItem
      TabOrder = 7
    end
  end
end
