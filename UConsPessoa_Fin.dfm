object frmConsPessoa_Fin: TfrmConsPessoa_Fin
  Left = 338
  Top = 145
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Financeiro'
  ClientHeight = 495
  ClientWidth = 769
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
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 28
    Width = 769
    Height = 377
    Align = alClient
    Ctl3D = False
    DataSource = DMConsPessoa.dsDuplicata
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    GridStyle.Style = gsBrick
    GridStyle.OddColor = 13623263
    GridStyle.EvenColor = 10534847
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 16
    ScrollBars = ssHorizontal
    ColCount = 12
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'DTEMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMDUPLICATA'
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_LANCAMENTO'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTULTPAGAMENTO'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_RESTANTE'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLR_PAGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clDiasAtraso'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FILIAL'
        Width = 30
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 28
    Align = alTop
    Color = 16761281
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 58
      Top = 8
      Width = 455
      Height = 13
      AutoSize = False
      Caption = 'NomeClientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 536
      Top = 8
      Width = 137
      Height = 17
      Caption = 'Somente pendentes'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 437
    Width = 769
    Height = 58
    Align = alBottom
    Color = 16761281
    TabOrder = 2
    object Label3: TLabel
      Left = 32
      Top = 8
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Geral:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 104
      Top = 8
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 269
      Top = 8
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Em Aberto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 369
      Top = 8
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 33
      Top = 24
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 104
      Top = 24
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 269
      Top = 24
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Em Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 368
      Top = 24
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 532
      Top = 8
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dias Maior Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 641
      Top = 8
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 512
      Top = 24
      Width = 125
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Nota Maior Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 641
      Top = 24
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 495
      Top = 42
      Width = 142
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Parcelas em Atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 641
      Top = 42
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16754511
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlLimite: TPanel
    Left = 0
    Top = 405
    Width = 769
    Height = 32
    Align = alBottom
    TabOrder = 3
    object Label17: TLabel
      Left = 6
      Top = 6
      Width = 142
      Height = 20
      Alignment = taRightJustify
      Caption = 'Limite de Cr'#233'dito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 152
      Top = 6
      Width = 128
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Color = 16771022
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 293
      Top = 6
      Width = 111
      Height = 20
      Alignment = taRightJustify
      Caption = 'Limite Usado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 408
      Top = 6
      Width = 128
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = 16771022
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 560
      Top = 6
      Width = 52
      Height = 20
      Alignment = taRightJustify
      Caption = 'Saldo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 616
      Top = 6
      Width = 128
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Color = 16771022
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end
