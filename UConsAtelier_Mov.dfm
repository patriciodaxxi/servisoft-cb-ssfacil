object frmConsAtelier_Mov: TfrmConsAtelier_Mov
  Left = 193
  Top = 79
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Consulta Movimento Atelier'
  ClientHeight = 547
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
    Height = 116
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 563
      Top = 11
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pedido (OC):'
    end
    object Label2: TLabel
      Left = 127
      Top = 11
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial:'
    end
    object Label3: TLabel
      Left = 115
      Top = 33
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label5: TLabel
      Left = 80
      Top = 77
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Emiss'#227'o Ini:'
    end
    object Label6: TLabel
      Left = 253
      Top = 77
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label7: TLabel
      Left = 82
      Top = 97
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entrega Ini:'
    end
    object Label8: TLabel
      Left = 253
      Top = 97
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label9: TLabel
      Left = 118
      Top = 55
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Atelier:'
    end
    object Label10: TLabel
      Left = 547
      Top = 33
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Envio Atelier:'
    end
    object Label11: TLabel
      Left = 725
      Top = 33
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label12: TLabel
      Left = 536
      Top = 55
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Retorno Atelier:'
    end
    object Label13: TLabel
      Left = 726
      Top = 55
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label16: TLabel
      Left = 588
      Top = 77
      Width = 35
      Height = 13
      Caption = 'Op'#231#227'o:'
    end
    object Edit1: TEdit
      Left = 624
      Top = 3
      Width = 150
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 151
      Top = 3
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadAtelier_Mov.dsFilial
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 151
      Top = 25
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadAtelier_Mov.dsCliente
      TabOrder = 2
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit1: TDateEdit
      Left = 151
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 3
    end
    object DateEdit2: TDateEdit
      Left = 279
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 4
    end
    object DateEdit3: TDateEdit
      Left = 151
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 5
    end
    object DateEdit4: TDateEdit
      Left = 279
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 6
    end
    object btnConsultar: TBitBtn
      Left = 381
      Top = 87
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btnConsultarClick
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 151
      Top = 47
      Width = 377
      Height = 21
      DropDownCount = 8
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadAtelier_Mov.dsAtelier
      TabOrder = 8
      OnEnter = RxDBLookupCombo2Enter
    end
    object DateEdit6: TDateEdit
      Left = 624
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 9
    end
    object DateEdit7: TDateEdit
      Left = 751
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 10
    end
    object DateEdit8: TDateEdit
      Left = 624
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 11
    end
    object DateEdit9: TDateEdit
      Left = 752
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 12
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 77
      Height = 114
      Align = alLeft
      Caption = ' Op'#231#227'o '
      ItemIndex = 2
      Items.Strings = (
        'Pendente'
        'Faturado'
        'Ambos')
      TabOrder = 13
    end
    object ComboBox1: TComboBox
      Left = 624
      Top = 69
      Width = 150
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 14
      Text = 'Ambos'
      Items.Strings = (
        'N'#227'o enviado ao Atelier'
        'Atelier n'#227'o retornou'
        'Atelier Retornou'
        'Ambos')
    end
    object CheckBox1: TCheckBox
      Left = 536
      Top = 96
      Width = 80
      Height = 17
      Caption = 'Imprimir Obs'
      TabOrder = 15
    end
    object CheckBox2: TCheckBox
      Left = 623
      Top = 96
      Width = 114
      Height = 17
      Caption = 'Imprimir Cliente'
      TabOrder = 16
    end
    object BitBtn2: TBitBtn
      Left = 457
      Top = 87
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
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
    Top = 116
    Width = 898
    Height = 361
    Align = alClient
    DataSource = DMCadAtelier_Mov.dsConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 22
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FILIAL'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_PEDIDO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido Interno'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PEDIDO_CLIENTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Pedido Cliente (OC)'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Width = 33
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTEMISSAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Emiss'#227'o'
        Width = 71
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTENTREGA_ITEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Data Entrega'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_ENVIO_ATELIER'
        Title.Alignment = taCenter
        Title.Caption = 'Data Envio Atelier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_RETORNO_ATELIER'
        Title.Alignment = taCenter
        Title.Caption = 'Data Retorno Atelier'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        ReadOnly = True
        Title.Caption = 'Nome Produto'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pedido'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_TOTAL_ATELIER'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total Atelier'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ATELIER'
        Title.Caption = 'Nome Atelier'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_UNITARIO_ATELIER'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Unit'#225'rio Atelier'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        ReadOnly = True
        Title.Caption = 'Nome Cliente'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_CLIENTE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'ID Cliente'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Ped. Interno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_FILIAL'
        ReadOnly = True
        Title.Caption = 'Nome Filial'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ATELIER'
        Title.Alignment = taCenter
        Title.Caption = 'ID Atelier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_ADIANTAMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Adiantamento'
        Width = 64
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 514
    Width = 898
    Height = 33
    Align = alBottom
    Color = clSilver
    TabOrder = 2
    object Shape3: TShape
      Left = 653
      Top = 7
      Width = 30
      Height = 16
      Brush.Color = clAqua
    end
    object Label14: TLabel
      Left = 685
      Top = 10
      Width = 86
      Height = 13
      Caption = 'Enviada ao Atelier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape4: TShape
      Left = 508
      Top = 7
      Width = 30
      Height = 16
    end
    object Label15: TLabel
      Left = 540
      Top = 10
      Width = 108
      Height = 13
      Caption = 'N'#227'o enviada ao Atelier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 781
      Top = 7
      Width = 30
      Height = 16
      Brush.Color = clTeal
    end
    object Label4: TLabel
      Left = 813
      Top = 10
      Width = 76
      Height = 13
      Caption = 'Atelier Retornou'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnEnvio: TBitBtn
      Left = 0
      Top = 4
      Width = 185
      Height = 25
      Caption = 'Envio ao Atelier (Selecionados)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnEnvioClick
    end
    object btnRetorno: TBitBtn
      Left = 184
      Top = 4
      Width = 185
      Height = 25
      Caption = 'Retorno do Atelier (Selecionados)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnRetornoClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 477
    Width = 898
    Height = 37
    Align = alBottom
    Color = clSilver
    TabOrder = 3
    object Label17: TLabel
      Left = 271
      Top = 16
      Width = 139
      Height = 13
      Caption = 'Vlr.Total Atelier Com Retorno:'
    end
    object Label18: TLabel
      Left = 551
      Top = 16
      Width = 139
      Height = 13
      Caption = 'Vlr.Total Atelier Sem Retorno:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 412
      Top = 9
      Width = 121
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 692
      Top = 9
      Width = 121
      Height = 21
      AutoSize = False
      Color = clMoneyGreen
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object btnRecalcular: TBitBtn
      Left = 816
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Recalcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnRecalcularClick
    end
  end
end
