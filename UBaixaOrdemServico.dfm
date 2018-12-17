object frmBaixaOrdemServico: TfrmBaixaOrdemServico
  Left = 186
  Top = 39
  BorderStyle = bsDialog
  Caption = 'Ordem de Servi'#231'o (Concluir)'
  ClientHeight = 604
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 30
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object lblNumNota: TLabel
      Left = 11
      Top = 13
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' OS:'
    end
    object Label2: TLabel
      Left = 152
      Top = 2
      Width = 284
      Height = 26
      Caption = 
        'Informe a OS e pressione ENTER  '#13#10'deixando em branco o sistema v' +
        'ai mostrar a tela de consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 47
      Top = 6
      Width = 100
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      ParentCtl3D = False
      TabOrder = 0
      OnChange = CurrencyEdit1Change
      OnKeyDown = CurrencyEdit1KeyDown
    end
  end
  object pnlCadastro: TPanel
    Left = 0
    Top = 30
    Width = 991
    Height = 42
    Align = alTop
    Color = clSilver
    TabOrder = 1
    object Label1: TLabel
      Left = 51
      Top = 6
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object DBText6: TDBText
      Left = 89
      Top = 5
      Width = 139
      Height = 13
      AutoSize = True
      DataField = 'NOME_CLIENTE'
      DataSource = DMCadOrdemServico.dsOrdemServico
    end
    object Label5: TLabel
      Left = 712
      Top = 3
      Width = 160
      Height = 37
      Caption = 'Entregue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -33
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 20
      Top = 23
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Conclu'#237'da:'
    end
    object DBText2: TDBText
      Left = 89
      Top = 23
      Width = 3
      Height = 13
      AutoSize = True
      DataField = 'DTCONCLUIDO'
      DataSource = DMCadOrdemServico.dsOrdemServico
    end
    object DBText3: TDBText
      Left = 313
      Top = 23
      Width = 3
      Height = 13
      AutoSize = True
      DataField = 'DTENTREGA'
      DataSource = DMCadOrdemServico.dsOrdemServico
    end
    object Label4: TLabel
      Left = 256
      Top = 23
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Entrega:'
    end
    object btnConfirmar: TNxButton
      Left = 476
      Top = 12
      Width = 173
      Height = 30
      Caption = 'Executar Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = SMDBGrid5DblClick
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 72
    Width = 991
    Height = 532
    Align = alClient
    TabOrder = 2
    Visible = False
    object SMDBGrid5: TSMDBGrid
      Left = 1
      Top = 1
      Width = 989
      Height = 243
      Align = alClient
      Ctl3D = False
      DataSource = DMCadOrdemServico.dsOrdemServico_Itens
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid5DblClick
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
      OnGetCellParams = SMDBGrid5GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 12
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Item'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_SERIE'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' S'#233'rie'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_SERIE_TROCA'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' S'#233'rie Troca'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 363
          Visible = True
        end
        item
          Color = 8454143
          Expanded = False
          FieldName = 'DTENTRADA'
          Title.Alignment = taCenter
          Title.Caption = 'Dt. Entrada Produ'#231#227'o'
          Title.Color = 8454143
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end
        item
          Color = 8454143
          Expanded = False
          FieldName = 'DTCONCLUIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Conclu'#237'do'
          Title.Color = 8454143
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARCA'
          Title.Alignment = taCenter
          Title.Caption = 'Marca'
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO'
          Title.Alignment = taCenter
          Title.Caption = 'Modelo'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_GARANTIA'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Garantia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'ID Produto'
          Width = 44
          Visible = True
        end>
    end
    object RzPageControl3: TRzPageControl
      Left = 1
      Top = 261
      Width = 989
      Height = 270
      ActivePage = TS_Defeito
      ActivePageDefault = TS_Defeito
      Align = alBottom
      TabIndex = 0
      TabOrder = 1
      FixedDimension = 19
      object TS_Defeito: TRzTabSheet
        Caption = 'Defeito Alegado'
        object DBMemo3: TDBMemo
          Left = 0
          Top = 0
          Width = 684
          Height = 247
          Align = alClient
          DataField = 'DEFEITO_ALEGADO'
          DataSource = DMCadOrdemServico.dsOrdemServico_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object RzGroupBox4: TRzGroupBox
          Left = 684
          Top = 0
          Width = 301
          Height = 247
          Align = alRight
          BorderColor = clBlue
          BorderInner = fsButtonUp
          BorderOuter = fsBump
          Caption = ' Observa'#231#227'o '
          Ctl3D = True
          FlatColor = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          VisualStyle = vsGradient
          object DBMemo4: TDBMemo
            Left = 5
            Top = 18
            Width = 291
            Height = 224
            Align = alClient
            DataField = 'OBS'
            DataSource = DMCadOrdemServico.dsOrdemServico_Itens
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object TabSheet1: TRzTabSheet
        Caption = 'Acess'#243'rios'
        object DBMemo1: TDBMemo
          Left = 0
          Top = 0
          Width = 985
          Height = 247
          Align = alClient
          DataField = 'ACESSORIOS'
          DataSource = DMCadOrdemServico.dsOrdemServico_Itens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TS_Servico: TRzTabSheet
        Caption = 'Pe'#231'as Usadas (Produtos)'
        object SMDBGrid4: TSMDBGrid
          Left = 0
          Top = 0
          Width = 985
          Height = 247
          Align = alClient
          Ctl3D = False
          DataSource = DMCadOrdemServico.dsOrdemServico_Mat
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
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
          DefaultRowHeight = 16
          ScrollBars = ssHorizontal
          ColCount = 8
          RowCount = 3
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEM'
              Title.Alignment = taCenter
              Title.Caption = 'Item Produto'
              Title.Color = 16763025
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Title.Alignment = taCenter
              Title.Caption = 'ID Pe'#231'a'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkNomeProduto'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Pe'#231'a'
              Title.Color = 16763025
              Width = 466
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Title.Color = 16763025
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Unit'#225'rio'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Total'
              Title.Color = 16763025
              Width = 93
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FATURAR'
              Title.Alignment = taCenter
              Title.Caption = 'Faturar'
              Title.Color = 16763025
              Width = 53
              Visible = True
            end>
        end
      end
      object TabSheet5: TRzTabSheet
        Caption = ' Servi'#231'o Prestado '
        object SMDBGrid3: TSMDBGrid
          Left = 0
          Top = 0
          Width = 985
          Height = 247
          Align = alClient
          Ctl3D = False
          DataSource = DMCadOrdemServico.dsOrdemServico_Serv
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlue
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
          DefaultRowHeight = 16
          ScrollBars = ssHorizontal
          ColCount = 11
          RowCount = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ITEM'
              Title.Alignment = taCenter
              Title.Caption = 'Item'
              Title.Color = 16763025
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkServico_Int'
              Title.Alignment = taCenter
              Title.Caption = 'Nome Servi'#231'o'
              Title.Color = 16763025
              Width = 391
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'lkTecnico'
              Title.Alignment = taCenter
              Title.Caption = 'Nome T'#233'cnico'
              Title.Color = 16763025
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TEMPO_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Tempo Total'
              Title.Color = 16763025
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Unit'#225'rio'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Total'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTENTRADA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Entrada'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HRENTRADA'
              Title.Alignment = taCenter
              Title.Caption = 'Hora Entrada'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTSAIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Data Sa'#237'da'
              Title.Color = 16763025
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HRSAIDA'
              Title.Alignment = taCenter
              Title.Caption = 'Hora Sa'#237'da'
              Title.Color = 16763025
              Visible = True
            end>
        end
      end
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 244
      Width = 989
      Height = 17
      Align = alBottom
      Caption = 'Duplo clique para informar Servi'#231'o'
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
  end
end
