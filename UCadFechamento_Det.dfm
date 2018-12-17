object frmCadFechamento_Det: TfrmCadFechamento_Det
  Left = 213
  Top = 43
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadFechamento_Det'
  ClientHeight = 626
  ClientWidth = 1013
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
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 0
    Width = 1013
    Height = 345
    Align = alClient
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Movimento Detalhado '
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
    object SMDBGrid1: TSMDBGrid
      Left = 5
      Top = 18
      Width = 1003
      Height = 286
      Align = alClient
      Ctl3D = False
      DataSource = DMCadFechamento.dsDetalhamento
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 13
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'HISTORICO_COMPL'
          Title.Caption = 'Hist'#243'rico'
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FORMA_PAGAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Forma pagamento'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTMOVIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_ENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Entrada'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_SAIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Saida'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_TERMINAL'
          Title.Alignment = taCenter
          Title.Caption = 'Terminal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FECHAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'ID Fechamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CONTA'
          Title.Alignment = taCenter
          Title.Caption = 'ID Conta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_RECEBIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Recebimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FORMA_PAGAMENTO'
          Title.Caption = 'ID Forma Pagto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Caption = 'ID Mov. Financeiro'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 5
      Top = 304
      Width = 1003
      Height = 36
      Align = alBottom
      Color = clSilver
      TabOrder = 1
      object Label1: TLabel
        Left = 216
        Top = 16
        Width = 67
        Height = 13
        Caption = 'Total Entrada:'
      end
      object Label2: TLabel
        Left = 421
        Top = 16
        Width = 64
        Height = 13
        Caption = 'Total Sa'#237'das:'
      end
      object Label3: TLabel
        Left = 656
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Saldo:'
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 288
        Top = 8
        Width = 121
        Height = 21
        AutoSize = False
        ReadOnly = True
        TabOrder = 0
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 488
        Top = 8
        Width = 121
        Height = 21
        AutoSize = False
        ReadOnly = True
        TabOrder = 1
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 688
        Top = 8
        Width = 121
        Height = 21
        AutoSize = False
        ReadOnly = True
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 813
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Recalcular'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 0
    Top = 345
    Width = 1013
    Height = 281
    Align = alBottom
    BorderColor = clNavy
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Cr'#233'dito da Loja '
    Ctl3D = True
    FlatColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    VisualStyle = vsGradient
    object SMDBGrid2: TSMDBGrid
      Left = 5
      Top = 18
      Width = 1003
      Height = 258
      Align = alClient
      Ctl3D = False
      DataSource = DMCadFechamento.dsDetalhamento_Dup
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clRed
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
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 9
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMDUPLICATA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Duplicata'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Vencimento'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_ENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FORMA_PAGAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Forma Pagamento'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_TIPOCOBRANCA'
          Title.Alignment = taCenter
          Title.Caption = 'ID Forma Pagto'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PESSOA'
          Title.Alignment = taCenter
          Title.Caption = 'ID Cliente'
          Width = 53
          Visible = True
        end>
    end
  end
end
