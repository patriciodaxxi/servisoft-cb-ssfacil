object frmCadDuplicata_Cheque: TfrmCadDuplicata_Cheque
  Left = 357
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informar o cheque'
  ClientHeight = 467
  ClientWidth = 785
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
  object Panel3: TPanel
    Left = 0
    Top = 246
    Width = 785
    Height = 34
    Align = alBottom
    Color = 8404992
    TabOrder = 5
    object Label9: TLabel
      Left = 488
      Top = 13
      Width = 101
      Height = 14
      Alignment = taRightJustify
      Caption = 'Saldo Restante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn4: TBitBtn
      Left = 371
      Top = 5
      Width = 98
      Height = 25
      Caption = '(F10) Ca&ncelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 17
      Top = 5
      Width = 98
      Height = 25
      Caption = '&Confirmar Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 592
      Top = 6
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 16777088
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 121
      Top = 5
      Width = 98
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 225
      Top = 5
      Width = 98
      Height = 25
      Caption = 'Finalizar Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 138
    Width = 785
    Height = 108
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 4
    object Label3: TLabel
      Left = 68
      Top = 13
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object Label5: TLabel
      Left = 70
      Top = 57
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Titular:'
    end
    object Label6: TLabel
      Left = 35
      Top = 79
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fone Contato:'
    end
    object Label7: TLabel
      Left = 38
      Top = 35
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Recebido de:'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 103
      Top = 5
      Width = 297
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadDuplicata.dsBanco
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 103
      Top = 49
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 40
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 103
      Top = 71
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 40
      TabOrder = 3
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 103
      Top = 27
      Width = 297
      Height = 21
      DropDownCount = 15
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = DMCadDuplicata.dsPessoa
      TabOrder = 1
      OnExit = RxDBLookupCombo2Exit
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 280
    Width = 785
    Height = 187
    Align = alBottom
    Ctl3D = False
    DataSource = DMCadDuplicata.dsmCheque
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 6
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Num_Cheque'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Cheque'
        Title.Color = 16764573
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkNomeBanco'
        Title.Alignment = taCenter
        Title.Caption = 'Banco'
        Title.Color = 16764573
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vlr_Cheque'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Color = 16764573
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DtBomPara'
        Title.Alignment = taCenter
        Title.Caption = 'Bom Para'
        Title.Color = 16764573
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Titular'
        Title.Alignment = taCenter
        Title.Color = 16764573
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fone_Titular'
        Title.Alignment = taCenter
        Title.Caption = 'Fone Contato'
        Title.Color = 16764573
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Agencia'
        Title.Alignment = taCenter
        Title.Caption = 'Ag'#234'ncia'
        Title.Color = 16764573
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NumConta'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Conta'
        Title.Color = 16764573
        Width = 106
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodCompensacao'
        Title.Alignment = taCenter
        Title.Caption = 'Comp.'
        Title.Color = 16764573
        Width = 50
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 86
    Width = 785
    Height = 52
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 48
      Top = 12
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Cheque:'
    end
    object Label4: TLabel
      Left = 75
      Top = 34
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Label13: TLabel
      Left = 251
      Top = 34
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bom Para:'
    end
    object Label11: TLabel
      Left = 456
      Top = 11
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ag'#234'ncia:'
    end
    object Label12: TLabel
      Left = 452
      Top = 32
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Conta:'
    end
    object Label14: TLabel
      Left = 597
      Top = 11
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Compensa'#231#227'o:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 104
      Top = 4
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 104
      Top = 26
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '0.00'
      TabOrder = 1
    end
    object DtPagamento: TDateEdit
      Left = 301
      Top = 26
      Width = 100
      Height = 21
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 500
      Top = 3
      Width = 91
      Height = 21
      TabStop = False
      Color = 14079702
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 500
      Top = 24
      Width = 91
      Height = 21
      TabStop = False
      Color = 14079702
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 4
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 692
      Top = 3
      Width = 57
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14079702
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 5
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 44
      Top = 14
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Emitido Por:'
    end
    object cbxEmitidoPor: TComboBox
      Left = 101
      Top = 6
      Width = 161
      Height = 21
      Style = csDropDownList
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 0
      OnChange = cbxEmitidoPorChange
      OnExit = cbxEmitidoPorExit
      Items.Strings = (
        'CLIENTE'
        'TERCEIRO')
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 58
    Width = 785
    Height = 28
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label8: TLabel
      Left = 71
      Top = 12
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Conta:'
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 103
      Top = 4
      Width = 413
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCadDuplicata.dsContas
      TabOrder = 0
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 33
    Width = 785
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label10: TLabel
      Left = 8
      Top = 6
      Width = 90
      Height = 13
      Caption = 'Leitura do Cheque:'
    end
    object Edit3: TEdit
      Left = 102
      Top = 2
      Width = 411
      Height = 21
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = Edit3KeyDown
    end
  end
end
