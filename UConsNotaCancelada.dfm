object frmConsNotaCancelada: TfrmConsNotaCancelada
  Left = 50
  Top = 99
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Notas Canceladas/Denegadas'
  ClientHeight = 535
  ClientWidth = 898
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 76
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 164
      Top = 8
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label5: TLabel
      Left = 117
      Top = 33
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Ini:'
    end
    object Label6: TLabel
      Left = 291
      Top = 33
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Shape2: TShape
      Left = 670
      Top = 57
      Width = 30
      Height = 16
      Brush.Color = clRed
    end
    object Label10: TLabel
      Left = 702
      Top = 60
      Width = 51
      Height = 13
      Caption = 'Cancelada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape3: TShape
      Left = 766
      Top = 57
      Width = 30
      Height = 16
      Brush.Color = 33023
    end
    object Label11: TLabel
      Left = 798
      Top = 60
      Width = 50
      Height = 13
      Caption = 'Denegada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 189
      Top = 2
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsCancelada.dsFilial
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 189
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 317
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 112
      Height = 74
      Align = alLeft
      Caption = 'Op'#231#227'o'
      ItemIndex = 2
      Items.Strings = (
        'Cancelada'
        'Denegada'
        'Ambas')
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 189
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 264
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 76
    Width = 898
    Height = 459
    Align = alClient
    DataSource = DMConsCancelada.dsConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 15
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'CANCELADA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFEDENEGADA'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMNOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_NOTA'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCFOP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_NOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO_CANCELADA'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO_DENEGADA'
        Width = 300
        Visible = True
      end>
  end
end
