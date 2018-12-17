object frmConsNotas_SER: TfrmConsNotas_SER
  Left = 300
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Notas Servi'#231'os'
  ClientHeight = 535
  ClientWidth = 895
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
    Width = 895
    Height = 109
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 63
      Top = 16
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label5: TLabel
      Left = 30
      Top = 62
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Inicial:'
    end
    object Label6: TLabel
      Left = 190
      Top = 62
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Shape2: TShape
      Left = 294
      Top = 85
      Width = 30
      Height = 16
      Brush.Color = clRed
    end
    object Label10: TLabel
      Left = 326
      Top = 88
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
    object Label1: TLabel
      Left = 51
      Top = 41
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 88
      Top = 10
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME_INTERNO'
      LookupSource = DMConsNotas_SER.dsFilial
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 88
      Top = 54
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 216
      Top = 54
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 78
      Width = 83
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 171
      Top = 78
      Width = 83
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 88
      Top = 32
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMConsNotas_SER.dsPessoa
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 360
      Top = 56
      Width = 177
      Height = 17
      Caption = 'Mostrar as canceladas'
      TabOrder = 6
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 109
    Width = 895
    Height = 426
    Align = alClient
    DataSource = DMConsNotas_SER.dsConsulta
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
    ColCount = 19
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_INTERNO'
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Title.Caption = 'S'#233'rie'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Nota'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMRPS'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' RPS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO_CAD'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Cliente'
        Width = 304
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Servi'#231'o'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_SERVICO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Servi'#231'o'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_LIQUIDO_NFSE'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. L'#237'quido'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_CALCULO'
        Title.Alignment = taCenter
        Title.Caption = 'Base C'#225'lculo'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERC_ALIQUOTA'
        Title.Alignment = taCenter
        Title.Caption = '% Al'#237'quota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ISS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. ISS'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ISS_RETIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. ISS Retido'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASE_INSS'
        Title.Alignment = taCenter
        Title.Caption = 'Base INSS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_INSS'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. INSS'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATUS_RPS'
        Title.Alignment = taCenter
        Title.Caption = 'Cancelada'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO_CANCELAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo Cancelada'
        Width = 210
        Visible = True
      end>
  end
end
